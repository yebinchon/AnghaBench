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
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
VOID
FUNC2(
    HWND hwnd,
    PWSTR szBuffer)
{
    PWSTR pStart, pEnd;

    pStart = szBuffer;
    for (;;)
    {
        pEnd = FUNC1(pStart, L',');
        if (pEnd != NULL)
            *pEnd = UNICODE_NULL;

        FUNC0(hwnd, pStart);

        if (pEnd == NULL)
            break;

        pStart = pEnd + 1;
    }
}