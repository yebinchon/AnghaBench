
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;
typedef int POINT ;
typedef int MMPoint ;
typedef int Display ;
typedef int CGPoint ;
typedef int CGEventRef ;


 int CFRelease (int ) ;
 int CGEventCreate (int *) ;
 int CGEventGetLocation (int ) ;
 int GetCursorPos (int *) ;
 int MMPointFromCGPoint (int ) ;
 int MMPointFromPOINT (int ) ;
 int MMPointMake (int,int) ;
 int XDefaultRootWindow (int *) ;
 int * XGetMainDisplay () ;
 int XQueryPointer (int *,int ,int *,int *,int*,int*,int*,int*,unsigned int*) ;

MMPoint getMousePos()
{
}
