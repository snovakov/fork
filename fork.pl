#!/usr/bin/perl
# file: fork.pl

print "PID=$$\n";

my $child = fork;
die "Can't fork: $!" unless defined $child;

if ($child > 0) { # parent process
   print "Parent process: PID=$$, child=$child\n";
} else {
   my $ppid = getppid;
   print "Child process: PID=$$, parent=$ppid\n";
}
