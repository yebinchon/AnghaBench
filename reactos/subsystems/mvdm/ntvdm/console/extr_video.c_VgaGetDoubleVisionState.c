
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBOOLEAN ;
typedef int BOOLEAN ;


 int DoubleHeight ;
 int DoubleWidth ;
 int FALSE ;
 int * GraphicsConsoleBuffer ;
 int TRUE ;

BOOLEAN VgaGetDoubleVisionState(PBOOLEAN Horizontal, PBOOLEAN Vertical)
{
    if (GraphicsConsoleBuffer == ((void*)0)) return FALSE;
    if (Horizontal) *Horizontal = DoubleWidth;
    if (Vertical) *Vertical = DoubleHeight;
    return TRUE;
}
