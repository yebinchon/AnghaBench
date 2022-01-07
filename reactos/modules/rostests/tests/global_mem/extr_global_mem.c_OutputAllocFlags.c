
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GMEM_MOVEABLE ;
 int GMEM_ZEROINIT ;
 int OUTPUT_Line (char*) ;

void OutputAllocFlags(UINT pFlags)
{
    if (pFlags & GMEM_MOVEABLE)
    {
        OUTPUT_Line("Movable Memory");
    }
    else
    {
        OUTPUT_Line("Fixed Memory");
    }

    if (pFlags & GMEM_ZEROINIT)
    {
        OUTPUT_Line("Zero Initialized Memory");
    }
}
