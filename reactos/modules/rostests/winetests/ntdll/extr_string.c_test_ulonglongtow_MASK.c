#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mask; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int NB_ULONGLONG2STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* ulonglong2str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    int test_num;
    LPWSTR result;

    for (test_num = 0; test_num < NB_ULONGLONG2STR; test_num++) {
	if (ulonglong2str[test_num].mask & 0x10) {
	    FUNC1(test_num, &ulonglong2str[test_num]);
	} /* if */
	if (&p_ui64tow) {
	    if (ulonglong2str[test_num].mask & 0x20) {
		FUNC2(test_num, &ulonglong2str[test_num]);
	    } /* if */
	} /* if */
    } /* for */

    if (0) {
        /* Crashes on XP and W2K3 */
        result = FUNC3(ulonglong2str[0].value, NULL, 10);
        FUNC0(result == NULL,
           "(test d): _i64tow(0x%s, NULL, 10) has result %p, expected: NULL\n",
           FUNC5(ulonglong2str[0].value), result);
    }

    if (&p_ui64tow) {
        if (0) {
            /* Crashes on XP and W2K3 */
	    result = FUNC4(ulonglong2str[0].value, NULL, 10);
	    FUNC0(result == NULL,
               "(test e): _ui64tow(0x%s, NULL, 10) has result %p, expected: NULL\n",
	       FUNC5(ulonglong2str[0].value), result);
        }
    } /* if */
}