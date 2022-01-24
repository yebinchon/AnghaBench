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
typedef  scalar_t__* PHKEY ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

LONG
FUNC5(PHKEY PnpKey)
{
  LONG lError;
  char szBuffer[80];
  HKEY hAdapterKey;
  HKEY hBusKey;
  DWORD dwBus;
  DWORD dwType;
  DWORD dwSize;

  *PnpKey = 0;

  lError = FUNC1(HKEY_LOCAL_MACHINE,
		      "HARDWARE\\DESCRIPTION\\System\\MultifunctionAdapter",
		      &hAdapterKey);
  if (lError != ERROR_SUCCESS)
    return 0;

  /* Enumerate buses */
  for (dwBus = 0; ; dwBus++)
    {
      FUNC3(szBuffer, "%lu", dwBus);

      lError = FUNC1(hAdapterKey,
			  szBuffer,
			  &hBusKey);
      if (lError != ERROR_SUCCESS)
	{
	  FUNC0(hAdapterKey);
	  return lError;
	}

      dwSize = 80;
      lError = FUNC2(hBusKey,
			       "Identifier",
			       NULL,
			       &dwType,
			       (LPBYTE)szBuffer,
			       &dwSize);
      if (lError != ERROR_SUCCESS)
	{
	  FUNC0(hBusKey);
	  FUNC0(hAdapterKey);
	  return lError;
	}

      if (dwType == REG_SZ && FUNC4(szBuffer, "pnp bios") == 0)
	{
	  *PnpKey = hBusKey;
	  FUNC0(hAdapterKey);
	  return ERROR_SUCCESS;
	}

      FUNC0(hBusKey);
    }

  return 1;
}