
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isLoaded; int * theBundle; int * theWrite; int * theRead; } ;


 int CFBundleUnloadExecutable (int *) ;
 int CFRelease (int *) ;
 TYPE_1__ __msl_os_x ;

void RemoveConsole(void)
{

  if (__msl_os_x.theBundle != ((void*)0))
  {
    if (__msl_os_x.isLoaded)
    {
      __msl_os_x.theRead = ((void*)0);
      __msl_os_x.theWrite = ((void*)0);

      CFBundleUnloadExecutable(__msl_os_x.theBundle);
      __msl_os_x.isLoaded = 0;
    }

    CFRelease(__msl_os_x.theBundle);
    __msl_os_x.theBundle = ((void*)0);
  }

}
