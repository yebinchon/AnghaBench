
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int arg_syscall_archs ;
 int is_seccomp_available () ;
 int log_error_errno (int,char*) ;
 int seccomp_restrict_archs (int ) ;

__attribute__((used)) static int enforce_syscall_archs(Set *archs) {
        return 0;
}
