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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, const char *field, const char *eq) {

        if (FUNC0(field, "What", "Where", "Options", "Type"))
                return FUNC4(m, field, eq);

        if (FUNC5(field, "TimeoutSec"))
                return FUNC3(m, field, eq);

        if (FUNC5(field, "DirectoryMode"))
                return FUNC2(m, field, eq);

        if (FUNC0(field, "SloppyOptions", "LazyUnmount", "ForceUnmount"))
                return FUNC1(m, field, eq);

        return 0;
}