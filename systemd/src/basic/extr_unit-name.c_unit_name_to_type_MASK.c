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
typedef  int /*<<< orphan*/  UnitType ;

/* Variables and functions */
 int /*<<< orphan*/  UNIT_NAME_ANY ; 
 int /*<<< orphan*/  _UNIT_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

UnitType FUNC5(const char *n) {
        const char *e;

        FUNC0(n);

        if (!FUNC3(n, UNIT_NAME_ANY))
                return _UNIT_TYPE_INVALID;

        FUNC1(e = FUNC2(n, '.'));

        return FUNC4(e + 1);
}