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
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * pMSVCRTD_operator_delete ; 
 int /*<<< orphan*/ * pMSVCRTD_operator_new_dbg ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(void)
{
  HMODULE hModule = FUNC1("msvcrtd.dll");

  if (!hModule) {
    FUNC3("LoadLibraryA failed to load msvcrtd.dll with GLE=%d\n", FUNC0());
    return FALSE;
  }

  if (sizeof(void *) > sizeof(int))  /* 64-bit has a different mangled name */
  {
      FUNC2(pMSVCRTD_operator_new_dbg, "??2@YAPEAX_KHPEBDH@Z");
      FUNC2(pMSVCRTD_operator_delete, "??3@YAXPEAX@Z");
  }
  else
  {
      FUNC2(pMSVCRTD_operator_new_dbg, "??2@YAPAXIHPBDH@Z");
      FUNC2(pMSVCRTD_operator_delete, "??3@YAXPAX@Z");
  }

  if (pMSVCRTD_operator_new_dbg == NULL)
    return FALSE;

  return TRUE;
}