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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_SDECIMAL ; 
 int /*<<< orphan*/  LOCALE_STHOUSAND ; 
 int /*<<< orphan*/  lcid ; 
 scalar_t__ szComma ; 
 scalar_t__ szDecimal ; 

VOID
FUNC2()
{
   FUNC1(lcid, LOCALE_STHOUSAND, (LPWSTR) szComma, FUNC0(szComma));
   FUNC1(lcid, LOCALE_SDECIMAL, (LPWSTR) szDecimal, FUNC0(szDecimal));
}