
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef size_t ULONG ;
typedef int* PUSHORT ;


 size_t GLOBAL_SCREEN_HEIGHT ;
 size_t GLOBAL_SCREEN_WIDTH ;
 int pScreenBufferVga ;

void InvertLineVga(ULONG line)
{
    ULONG i;
    PUSHORT p = (PUSHORT)pScreenBufferVga;
    USHORT attr;

    if(line < GLOBAL_SCREEN_HEIGHT)
    {
        attr = p[line*GLOBAL_SCREEN_WIDTH]>>8;
        attr = ((attr & 0x07)<<4) | ((attr & 0xF0)>>4);
        attr <<= 8;
        for(i=0;i<GLOBAL_SCREEN_WIDTH;i++)
            p[line*GLOBAL_SCREEN_WIDTH + i] = (p[line*GLOBAL_SCREEN_WIDTH + i] & 0x00FF) | attr;
    }
}
