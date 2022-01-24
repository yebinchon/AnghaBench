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
typedef  int /*<<< orphan*/  VarlinkReplyFlags ;
typedef  int /*<<< orphan*/  Varlink ;
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int n_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(Varlink *link, JsonVariant *parameters, const char *error_id, VarlinkReplyFlags flags, void *userdata) {
        JsonVariant *sum;

        sum = FUNC1(parameters, "sum");

        FUNC0(FUNC2(sum) == 7+22);

        if (++n_done == 2)
                FUNC3(FUNC4(link), EXIT_FAILURE);

        return 0;
}