#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
  if (&pGetNumberOfInterfaces) {
    DWORD apiReturn, numInterfaces;

    /* Crashes on Vista */
    if (0) {
      apiReturn = FUNC1(NULL);
      if (apiReturn == ERROR_NOT_SUPPORTED)
        return;
      FUNC0(apiReturn == ERROR_INVALID_PARAMETER,
       "GetNumberOfInterfaces(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
       apiReturn);
    }

    apiReturn = FUNC1(&numInterfaces);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC2("GetNumberOfInterfaces is not supported\n");
      return;
    }
    FUNC0(apiReturn == NO_ERROR,
     "GetNumberOfInterfaces returned %d, expected 0\n", apiReturn);
  }
}