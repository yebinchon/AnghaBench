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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 scalar_t__ arg_description ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const*) ; 

__attribute__((used)) static int FUNC7(sd_device *d) {
        const char *model, *label;

        if (arg_description)
                return 0;

        model = FUNC1(d);

        label = FUNC0(d);
        if (!label)
                (void) FUNC4(d, "ID_PART_ENTRY_NUMBER", &label);

        if (model && label)
                arg_description = FUNC6(model, " ", label);
        else if (label)
                arg_description = FUNC5(label);
        else if (model)
                arg_description = FUNC5(model);
        else
                return 0;

        if (!arg_description)
                return FUNC3();

        FUNC2("Discovered description=%s", arg_description);
        return 1;
}