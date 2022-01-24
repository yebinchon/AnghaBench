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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT ;
struct TYPE_2__ {int /*<<< orphan*/  hModule; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXEXTNAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 TYPE_1__* extensions ; 
 scalar_t__ iNumExtensions ; 

VOID
FUNC5(int i, LPTSTR szName)
{
  TCHAR szFullName[256];
  LPTSTR lpName;

  *szName = FUNC4('\0');

  if ((UINT)i<(UINT)iNumExtensions
   && FUNC1(extensions[i].hModule, szFullName,
   FUNC0(szFullName)) && (lpName=FUNC3 (szFullName, NULL, FUNC4('\\'))))
    FUNC2(szName, lpName+1, MAXEXTNAME);
}