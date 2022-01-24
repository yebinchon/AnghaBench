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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  _TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct tm*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/  const*) ; 

_TCHAR *
FUNC2(const time_t *ptime)
{
    struct tm *ptm = FUNC1(ptime);
    if (!ptm)
    {
        return 0;
    }
    return FUNC0(ptm);
}