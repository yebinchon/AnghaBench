
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int FUTEX_WAIT_PRIVATE ;
 int sys_futex (void*,int ,unsigned int,struct timespec const*,int *,int ) ;

__attribute__((used)) static int vlc_futex_wait(void *addr, unsigned val, const struct timespec *to)
{
    return sys_futex(addr, FUTEX_WAIT_PRIVATE, val, to, ((void*)0), 0);
}
