
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMMouseButton ;
typedef int CGPoint ;
typedef int CGEventType ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreateMouseEvent (int *,int const,int const,int ) ;
 int CGEventPost (int ,int ) ;
 int CGEventSetIntegerValueField (int ,int ,int) ;
 int CGEventSetType (int ,int const) ;
 int CGPointFromMMPoint (int ) ;
 int MMMouseToCGEventType (int,int ) ;
 int clickMouse (int ) ;
 int getMousePos () ;
 int kCGHIDEventTap ;
 int kCGMouseButtonLeft ;
 int kCGMouseEventClickState ;
 int microsleep (int) ;

void doubleClick(MMMouseButton button)
{
 clickMouse(button);
 microsleep(200);
 clickMouse(button);


}
