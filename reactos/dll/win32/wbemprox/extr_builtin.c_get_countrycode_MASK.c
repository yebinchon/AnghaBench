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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LOCALE_ICOUNTRY ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static WCHAR *FUNC2(void)
{
    WCHAR *ret = FUNC1( 6 * sizeof(WCHAR) );
    if (ret) FUNC0( LOCALE_SYSTEM_DEFAULT, LOCALE_ICOUNTRY, ret, 6 );
    return ret;
}