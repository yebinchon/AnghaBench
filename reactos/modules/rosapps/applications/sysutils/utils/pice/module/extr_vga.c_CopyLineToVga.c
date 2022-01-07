
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t USHORT ;
typedef int * PUSHORT ;


 int ENTER_FUNC () ;
 size_t GLOBAL_SCREEN_WIDTH ;
 int LEAVE_FUNC () ;
 int PICE_memcpy (int *,int *,size_t) ;
 int pScreenBufferVga ;

void CopyLineToVga(USHORT dest,USHORT src)
{
    PUSHORT p = (PUSHORT)pScreenBufferVga;

    ENTER_FUNC();

 PICE_memcpy(&p[dest*GLOBAL_SCREEN_WIDTH],&p[src*GLOBAL_SCREEN_WIDTH],GLOBAL_SCREEN_WIDTH*sizeof(USHORT));

    LEAVE_FUNC();
}
