
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int __NR_futex ;
 int syscall (int ,void*,int,unsigned int,struct timespec const*,void*,int) ;

__attribute__((used)) static int sys_futex(void *addr, int op, unsigned val,
                     const struct timespec *to, void *addr2, int val3)
{
    return syscall(__NR_futex, addr, op, val, to, addr2, val3);
}
