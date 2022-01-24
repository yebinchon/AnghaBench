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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/ * PFIXED_INFO ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BUFFER_OVERFLOW ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  if (&pGetNetworkParams) {
    DWORD apiReturn;
    ULONG len = 0;

    apiReturn = FUNC4(NULL, NULL);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC5("GetNetworkParams is not supported\n");
      return;
    }
    FUNC3(apiReturn == ERROR_INVALID_PARAMETER,
     "GetNetworkParams returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC4(NULL, &len);
    FUNC3(apiReturn == ERROR_BUFFER_OVERFLOW,
     "GetNetworkParams returned %d, expected ERROR_BUFFER_OVERFLOW\n",
     apiReturn);
    if (apiReturn == ERROR_BUFFER_OVERFLOW) {
      PFIXED_INFO buf = FUNC1(FUNC0(), 0, len);

      apiReturn = FUNC4(buf, &len);
      FUNC3(apiReturn == NO_ERROR,
       "GetNetworkParams(buf, &dwSize) returned %d, expected NO_ERROR\n",
       apiReturn);
      FUNC2(FUNC0(), 0, buf);
    }
  }
}