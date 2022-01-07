
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * WritePtr ;
struct TYPE_2__ {int isLoaded; int * theBundle; int * theWrite; int * theRead; } ;
typedef int * ReadPtr ;
typedef scalar_t__ OSErr ;


 scalar_t__ CFBundleGetFunctionPointerForName (int *,int ) ;
 int CFBundleLoadExecutable (int *) ;
 int CFSTR (char*) ;
 scalar_t__ __msl_CreateFrameworkBundleFromName (int ,int **) ;
 TYPE_1__ __msl_os_x ;
 scalar_t__ noErr ;

short InstallConsole(short fd)
  {
#pragma unused (fd)
 OSErr theErr;
    short theResult;

    theResult = -1;


    __msl_os_x.isLoaded = 0;
    __msl_os_x.theBundle = ((void*)0);
    __msl_os_x.theRead = ((void*)0);
    __msl_os_x.theWrite = ((void*)0);


    theErr = __msl_CreateFrameworkBundleFromName(CFSTR("System.framework"),
      &__msl_os_x.theBundle);

    if ((theErr == noErr) && (__msl_os_x.theBundle != ((void*)0)))
    {
      theResult = 0;

      __msl_os_x.isLoaded = CFBundleLoadExecutable(__msl_os_x.theBundle);

      if (__msl_os_x.isLoaded)
      {

        __msl_os_x.theRead = (ReadPtr)
          CFBundleGetFunctionPointerForName(__msl_os_x.theBundle, CFSTR("read"));
        __msl_os_x.theWrite = (WritePtr)
          CFBundleGetFunctionPointerForName(__msl_os_x.theBundle, CFSTR("write"));
      }
    }

    return theResult;
  }
