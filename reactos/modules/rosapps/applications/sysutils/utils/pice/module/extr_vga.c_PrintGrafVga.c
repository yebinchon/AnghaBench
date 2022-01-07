
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef size_t ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int Asuchar; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
typedef scalar_t__* PUSHORT ;


 size_t GLOBAL_SCREEN_WIDTH ;
 TYPE_2__ attr ;
 scalar_t__ pScreenBufferVga ;

void PrintGrafVga(ULONG x,ULONG y,UCHAR c)
{
    ((PUSHORT)pScreenBufferVga)[y*GLOBAL_SCREEN_WIDTH + x] = (USHORT)((attr.u.Asuchar<<8)|c);
}
