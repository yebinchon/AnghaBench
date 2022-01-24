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
struct TYPE_2__ {int isLoaded; int /*<<< orphan*/ * theBundle; int /*<<< orphan*/ * theWrite; int /*<<< orphan*/ * theRead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ __msl_os_x ; 

void FUNC2(void)
{
#if !__MACH__
  if (__msl_os_x.theBundle != NULL)
  {
    if (__msl_os_x.isLoaded)
    {
      __msl_os_x.theRead = NULL;
      __msl_os_x.theWrite = NULL;

      FUNC0(__msl_os_x.theBundle);
      __msl_os_x.isLoaded = false;
    }

    FUNC1(__msl_os_x.theBundle);
    __msl_os_x.theBundle = NULL;
  }
#endif
}