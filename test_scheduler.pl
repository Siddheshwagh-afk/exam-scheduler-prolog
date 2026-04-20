#!/usr/bin/perl
use strict;
use warnings;

# Example Test Scheduler in Prolog

# Sample facts in Prolog format
my @exams = (
    { subject => 'Mathematics', date => '2026-04-22', time => '10:00'},
    { subject => 'Physics', date => '2026-04-22', time => '14:00'},
    { subject => 'Chemistry', date => '2026-04-23', time => '09:00'},
    { subject => 'Biology', date => '2026-04-23', time => '12:00'},
);

# Test cases to validate the exam scheduling functionality
sub test_scheduler {
    # Example of a test case for scheduling
    my @expected_schedule = (
        { subject => 'Mathematics', date => '2026-04-22', time => '10:00'},
        { subject => 'Physics', date => '2026-04-22', time => '14:00'},
    );

    my @actual_schedule = get_schedule_for_date('2026-04-22');
    assert_arrays_equal(
        "Test case for 2026-04-22",
        \\@expected_schedule,
        \\@actual_schedule
    );

    # Additional test cases can be added here
}

# Function to get the schedule for a specific date
sub get_schedule_for_date {
    my ($date) = @_;
    return grep { $_->{date} eq $date } @exams;
}

# Function to assert that two arrays are equal
sub assert_arrays_equal {
    my ($test_name, $expected, $actual) = @_;
    if (
        @$expected ~~ @$actual
    ) {
        print "$test_name: Passed\n";
    } else {
        print "$test_name: Failed\n";
    }
}

# Run the tests
test_scheduler();
