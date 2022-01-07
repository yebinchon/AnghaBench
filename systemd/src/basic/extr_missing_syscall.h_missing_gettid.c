
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __NR_gettid ;
 int syscall (int ) ;

__attribute__((used)) static inline pid_t missing_gettid(void) {
        return (pid_t) syscall(__NR_gettid);
}
