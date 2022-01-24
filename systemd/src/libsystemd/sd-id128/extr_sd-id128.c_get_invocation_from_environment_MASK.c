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
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(sd_id128_t *ret) {
        const char *e;

        FUNC0(ret);

        e = FUNC2("INVOCATION_ID");
        if (!e)
                return -ENXIO;

        return FUNC1(e, ret);
}