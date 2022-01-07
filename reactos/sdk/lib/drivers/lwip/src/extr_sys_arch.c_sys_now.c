
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32_t ;
struct TYPE_5__ {int QuadPart; } ;
struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int KeQuerySystemTime (TYPE_1__*) ;
 TYPE_2__ StartTime ;

u32_t sys_now(void)
{
    LARGE_INTEGER CurrentTime;

    KeQuerySystemTime(&CurrentTime);

    return (CurrentTime.QuadPart - StartTime.QuadPart) / 10000;
}
