
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef size_t ULONG ;
struct TYPE_3__ {int Asuchar; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
typedef scalar_t__* PUSHORT ;


 size_t GLOBAL_SCREEN_HEIGHT ;
 size_t GLOBAL_SCREEN_WIDTH ;
 TYPE_2__ attr ;
 int pScreenBufferVga ;

void ClrLineVga(ULONG line)
{
    ULONG i;
    PUSHORT p = (PUSHORT)pScreenBufferVga;

    if(line < GLOBAL_SCREEN_HEIGHT)
    {
        for(i=0;i<GLOBAL_SCREEN_WIDTH;i++)
            p[line*GLOBAL_SCREEN_WIDTH + i] = (USHORT)((attr.u.Asuchar<<8) | 0x20);
    }
}
