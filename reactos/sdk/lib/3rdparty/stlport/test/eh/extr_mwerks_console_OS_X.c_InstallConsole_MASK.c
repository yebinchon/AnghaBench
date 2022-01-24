#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * WritePtr ;
struct TYPE_2__ {int isLoaded; int /*<<< orphan*/ * theBundle; int /*<<< orphan*/ * theWrite; int /*<<< orphan*/ * theRead; } ;
typedef  int /*<<< orphan*/ * ReadPtr ;
typedef  scalar_t__ OSErr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_1__ __msl_os_x ; 
 scalar_t__ noErr ; 

short FUNC4(short fd)
  {
  #pragma unused (fd)
    OSErr theErr;
    short theResult;

    theResult = -1;

    /* Start with no bundle */
    __msl_os_x.isLoaded = false;
    __msl_os_x.theBundle = NULL;
    __msl_os_x.theRead = NULL;
    __msl_os_x.theWrite = NULL;

    /* Create a bundle reference based on its name */
    theErr = FUNC3(FUNC2("System.framework"),
      &__msl_os_x.theBundle);

    if ((theErr == noErr) && (__msl_os_x.theBundle != NULL))
    {
      theResult = 0;

      __msl_os_x.isLoaded = FUNC1(__msl_os_x.theBundle);

      if (__msl_os_x.isLoaded)
      {
        /* Lookup the functions in the bundle by name */
        __msl_os_x.theRead = (ReadPtr)
          FUNC0(__msl_os_x.theBundle, FUNC2("read"));
        __msl_os_x.theWrite = (WritePtr)
          FUNC0(__msl_os_x.theBundle, FUNC2("write"));
      }
    }

    return theResult;
  }