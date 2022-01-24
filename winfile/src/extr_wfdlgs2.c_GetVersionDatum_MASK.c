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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ VER_KEY_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  hmemVersion ; 
 int /*<<< orphan*/  lpVersionBuffer ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ szVersionKey ; 

LPTSTR
FUNC2(LPTSTR pszName)
{
   DWORD cbValue=0;
   LPTSTR lpValue;

   if (!hmemVersion)
      return NULL;

   FUNC1(szVersionKey + VER_KEY_END, pszName);

   FUNC0(lpVersionBuffer, szVersionKey, (LPVOID*)&lpValue, &cbValue);

   return (cbValue != 0) ? lpValue : NULL;
}