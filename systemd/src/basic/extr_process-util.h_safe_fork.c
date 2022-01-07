
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int ForkFlags ;


 int safe_fork_full (char const*,int *,int ,int ,int *) ;

__attribute__((used)) static inline int safe_fork(const char *name, ForkFlags flags, pid_t *ret_pid) {
        return safe_fork_full(name, ((void*)0), 0, flags, ret_pid);
}
