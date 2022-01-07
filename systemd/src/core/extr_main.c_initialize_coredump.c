
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RLIMIT_CORE ;
 int RLIMIT_MAKE_CONST (int ) ;
 int RLIM_INFINITY ;
 int disable_coredumps () ;
 int errno ;
 int getpid_cached () ;
 int log_warning_errno (int ,char*) ;
 scalar_t__ setrlimit (int ,int *) ;

__attribute__((used)) static void initialize_coredump(bool skip_setup) {
}
