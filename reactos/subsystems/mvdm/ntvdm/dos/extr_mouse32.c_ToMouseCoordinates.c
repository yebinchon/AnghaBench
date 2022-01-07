
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int MaxX; int MinX; int MaxY; int MinY; } ;
struct TYPE_7__ {int X; int Y; } ;
struct TYPE_6__ {int X; int Y; } ;
typedef TYPE_1__* PCOORD ;
typedef int DWORD ;
typedef TYPE_2__ COORD ;


 TYPE_5__ DriverState ;
 TYPE_2__ VgaGetDisplayResolution () ;
 int VgaGetDoubleVisionState (int *,int *) ;

__attribute__((used)) static VOID ToMouseCoordinates(PCOORD Position)
{
    COORD Resolution = VgaGetDisplayResolution();
    DWORD Width = DriverState.MaxX - DriverState.MinX + 1;
    DWORD Height = DriverState.MaxY - DriverState.MinY + 1;

    if (!VgaGetDoubleVisionState(((void*)0), ((void*)0)))
    {
        Resolution.X *= 8;
        Resolution.Y *= 8;
    }

    Position->X = DriverState.MinX + ((Position->X * Width) / Resolution.X);
    Position->Y = DriverState.MinY + ((Position->Y * Height) / Resolution.Y);
}
