#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ llt_time; } ;
typedef  scalar_t__ DUIDType ;
typedef  TYPE_1__ DUID ;

/* Variables and functions */
 scalar_t__ DUID_TYPE_LLT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,int,char*,int,char*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(const char *rvalue, int ret, DUIDType expected, usec_t expected_time) {
        DUID actual = {};
        int r;

        r = FUNC1("network", "filename", 1, "section", 1, "lvalue", 0, rvalue, &actual, NULL);
        FUNC2(r, "\"%s\" → %d (%m)", rvalue, actual.type);
        FUNC0(r == ret);
        FUNC0(expected == actual.type);
        if (expected == DUID_TYPE_LLT)
                FUNC0(expected_time == actual.llt_time);
}