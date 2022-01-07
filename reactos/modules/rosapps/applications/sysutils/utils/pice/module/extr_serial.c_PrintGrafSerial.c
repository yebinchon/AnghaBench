
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef void* UCHAR ;


 size_t GLOBAL_SCREEN_WIDTH ;
 void** flush_buffer ;
 size_t g_x ;
 size_t g_y ;
 void** pScreenBufferSerial ;
 scalar_t__ ulFlushBufferPos ;

void PrintGrafSerial(ULONG x,ULONG y,UCHAR c)
{

    pScreenBufferSerial[y*GLOBAL_SCREEN_WIDTH + x] = c;


    if(ulFlushBufferPos == 0)
    {
        g_x = x;
        g_y = y;
    }

    flush_buffer[ulFlushBufferPos++] = c;
}
