
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int* PUSHORT ;


 size_t GLOBAL_SCREEN_HEIGHT ;
 size_t GLOBAL_SCREEN_WIDTH ;
 int pScreenBufferVga ;

void HatchLineVga(ULONG line)
{
    ULONG i;
    PUSHORT p = (PUSHORT)pScreenBufferVga;

    if(line < GLOBAL_SCREEN_HEIGHT)
    {
        for(i=0;i<GLOBAL_SCREEN_WIDTH;i++)
            p[line*GLOBAL_SCREEN_WIDTH + i] = (p[line*GLOBAL_SCREEN_WIDTH + i] & 0xF0FF) | 0x0c00;
    }
}
