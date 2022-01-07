
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMSize ;
typedef int Display ;
typedef int CGDirectDisplayID ;


 size_t CGDisplayPixelsHigh (int ) ;
 size_t CGDisplayPixelsWide (int ) ;
 int CGMainDisplayID () ;
 int DefaultScreen (int *) ;
 scalar_t__ DisplayHeight (int *,int const) ;
 scalar_t__ DisplayWidth (int *,int const) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int MMSizeMake (size_t,size_t) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int * XGetMainDisplay () ;

MMSize getMainDisplaySize(void)
{
}
