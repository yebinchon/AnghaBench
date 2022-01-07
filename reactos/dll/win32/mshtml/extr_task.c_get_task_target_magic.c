
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int InterlockedIncrement (int*) ;

LONG get_task_target_magic(void)
{
    static LONG magic = 0x10000000;
    return InterlockedIncrement(&magic);
}
