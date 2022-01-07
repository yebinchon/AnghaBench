
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMPoint ;
typedef scalar_t__ MMMouseButton ;
typedef int CGMouseButton ;
typedef int CGEventType ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreateMouseEvent (int *,int const,int ,int ) ;
 int CGEventPost (int ,int ) ;
 int CGPointFromMMPoint (int ) ;
 int MMMouseDragToCGEventType (scalar_t__ const) ;
 int calculateDeltas (int *,int ) ;
 int kCGSessionEventTap ;
 int moveMouse (int ) ;

void dragMouse(MMPoint point, const MMMouseButton button)
{
 moveMouse(point);

}
