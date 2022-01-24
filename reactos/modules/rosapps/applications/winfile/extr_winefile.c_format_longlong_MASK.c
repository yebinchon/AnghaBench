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
typedef  int WCHAR ;
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC1(LPWSTR ret, ULONGLONG val)
{
    WCHAR buffer[65], *p = &buffer[64];

    *p = 0;
    do {
        *(--p) = '0' + val % 10;
	val /= 10;
    } while (val);
    FUNC0( ret, p );
}