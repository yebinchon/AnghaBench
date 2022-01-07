
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mouseScrollInputs ;
struct TYPE_4__ {int mouseData; scalar_t__ dwExtraInfo; scalar_t__ time; int dwFlags; scalar_t__ dy; scalar_t__ dx; } ;
struct TYPE_5__ {TYPE_1__ mi; void* type; } ;
typedef TYPE_2__ INPUT ;
typedef int Display ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreateScrollWheelEvent (int *,int ,int,int,int) ;
 int CGEventPost (int ,int ) ;
 int CurrentTime ;
 void* INPUT_MOUSE ;
 int MOUSEEVENTF_HWHEEL ;
 int MOUSEEVENTF_WHEEL ;
 int SendInput (int,TYPE_2__*,int) ;
 int * XGetMainDisplay () ;
 int XSync (int *,int) ;
 int XTestFakeButtonEvent (int *,int,int,int ) ;
 int abs (int) ;
 int kCGHIDEventTap ;
 int kCGScrollEventUnitPixel ;

void scrollMouse(int x, int y)
{
}
