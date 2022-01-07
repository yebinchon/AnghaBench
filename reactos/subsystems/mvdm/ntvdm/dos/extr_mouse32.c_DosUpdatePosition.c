
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {scalar_t__ ShowCount; int Position; } ;
struct TYPE_4__ {int X; int Y; } ;
typedef int * PCOORD ;
typedef TYPE_1__ COORD ;


 int CallMouseUserHandlers (int) ;
 TYPE_3__ DriverState ;
 int EraseMouseCursor () ;
 int PaintMouseCursor () ;
 TYPE_1__ VgaGetDisplayResolution () ;
 int VgaGetDoubleVisionState (int *,int *) ;

__attribute__((used)) static inline VOID DosUpdatePosition(PCOORD NewPosition)
{
    COORD Resolution = VgaGetDisplayResolution();


    if (!VgaGetDoubleVisionState(((void*)0), ((void*)0)))
    {
        Resolution.X *= 8;
        Resolution.Y *= 8;
    }

    if (DriverState.ShowCount > 0) EraseMouseCursor();
    DriverState.Position = *NewPosition;
    if (DriverState.ShowCount > 0) PaintMouseCursor();


    CallMouseUserHandlers(0x0001);
}
