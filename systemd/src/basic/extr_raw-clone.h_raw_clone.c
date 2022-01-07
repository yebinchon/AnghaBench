
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 unsigned long CLONE_CHILD_CLEARTID ;
 unsigned long CLONE_CHILD_SETTID ;
 unsigned long CLONE_PARENT_SETTID ;
 unsigned long CLONE_SETTLS ;
 unsigned long CLONE_VM ;
 int __NR_clone ;
 int assert (int) ;
 int errno ;
 int reset_cached_pid () ;
 scalar_t__ syscall (int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline pid_t raw_clone(unsigned long flags) {
        pid_t ret;

        assert((flags & (CLONE_VM|CLONE_PARENT_SETTID|CLONE_CHILD_SETTID|
                         CLONE_CHILD_CLEARTID|CLONE_SETTLS)) == 0);
        ret = (pid_t) syscall(__NR_clone, flags, ((void*)0));


        if (ret == 0)
                reset_cached_pid();

        return ret;
}
