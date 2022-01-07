
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_WAKE_PRIVATE ;
 int sys_futex (void*,int ,int,int *,int *,int ) ;

__attribute__((used)) static int vlc_futex_wake(void *addr, int nr)
{
    return sys_futex(addr, FUTEX_WAKE_PRIVATE, nr, ((void*)0), ((void*)0), 0);
}
