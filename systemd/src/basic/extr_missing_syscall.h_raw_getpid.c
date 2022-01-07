
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __NR_getpid ;
 int __NR_getxpid ;
 int syscall (int ) ;

__attribute__((used)) static inline pid_t raw_getpid(void) {



        return (pid_t) syscall(__NR_getpid);

}
