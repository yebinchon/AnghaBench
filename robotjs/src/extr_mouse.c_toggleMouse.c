
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mouseInput ;
struct TYPE_4__ {scalar_t__ mouseData; scalar_t__ dwExtraInfo; scalar_t__ time; int dwFlags; scalar_t__ dy; scalar_t__ dx; } ;
struct TYPE_5__ {TYPE_1__ mi; int type; } ;
typedef scalar_t__ MMMouseButton ;
typedef TYPE_2__ INPUT ;
typedef int Display ;
typedef int CGPoint ;
typedef int CGMouseButton ;
typedef int CGEventType ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreateMouseEvent (int *,int const,int const,int ) ;
 int CGEventPost (int ,int ) ;
 int CGPointFromMMPoint (int ) ;
 int CurrentTime ;
 int False ;
 int INPUT_MOUSE ;
 int MMMouseToCGEventType (int,scalar_t__) ;
 int MMMouseToMEventF (int,scalar_t__) ;
 int SendInput (int,TYPE_2__*,int) ;
 int True ;
 int * XGetMainDisplay () ;
 int XSync (int *,int) ;
 int XTestFakeButtonEvent (int *,scalar_t__,int ,int ) ;
 int getMousePos () ;
 int kCGSessionEventTap ;

void toggleMouse(bool down, MMMouseButton button)
{
}
