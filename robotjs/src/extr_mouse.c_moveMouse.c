
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mouseInput ;
struct TYPE_8__ {int dwFlags; scalar_t__ mouseData; scalar_t__ dwExtraInfo; scalar_t__ time; void* dy; void* dx; } ;
struct TYPE_10__ {TYPE_1__ mi; int type; } ;
struct TYPE_9__ {void* y; void* x; } ;
typedef TYPE_2__ MMPoint ;
typedef TYPE_3__ INPUT ;
typedef int Display ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreateMouseEvent (int *,int ,int ,int ) ;
 int CGEventPost (int ,int ) ;
 int CGPointFromMMPoint (TYPE_2__) ;
 int DefaultRootWindow (int *) ;
 int GetSystemMetrics (int ) ;
 int INPUT_MOUSE ;
 int MOUSEEVENTF_ABSOLUTE ;
 int MOUSEEVENTF_MOVE ;
 void* MOUSE_COORD_TO_ABS (void*,int ) ;
 int None ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int SendInput (int,TYPE_3__*,int) ;
 int * XGetMainDisplay () ;
 int XSync (int *,int) ;
 int XWarpPointer (int *,int ,int ,int ,int ,int ,int ,void*,void*) ;
 int calculateDeltas (int *,TYPE_2__) ;
 int kCGEventMouseMoved ;
 int kCGMouseButtonLeft ;
 int kCGSessionEventTap ;

void moveMouse(MMPoint point)
{
}
