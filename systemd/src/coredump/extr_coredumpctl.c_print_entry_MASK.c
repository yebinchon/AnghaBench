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
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 scalar_t__ arg_field ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC4(sd_journal *j, unsigned n_found, bool verb_is_info) {
        FUNC0(j);

        if (verb_is_info)
                return FUNC2(stdout, j, n_found);
        else if (arg_field)
                return FUNC1(stdout, j);
        else
                return FUNC3(stdout, j, n_found);
}