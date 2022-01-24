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
typedef  int /*<<< orphan*/ **** JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/ ******* FUNC1 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *****) ; 

int FUNC3(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        JsonVariant **p = userdata;

        FUNC0(&variant);
        FUNC0(p);

        FUNC2(*p);
        *p = FUNC1(variant);

        return 0;
}