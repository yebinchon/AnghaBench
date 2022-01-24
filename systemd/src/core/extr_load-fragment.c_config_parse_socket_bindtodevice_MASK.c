#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bind_to_device; } ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

int FUNC8(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Socket *s = data;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC3(rvalue) || FUNC7(rvalue, "*")) {
                s->bind_to_device = FUNC6(s->bind_to_device);
                return 0;
        }

        if (!FUNC2(rvalue)) {
                FUNC5(unit, LOG_ERR, filename, line, 0, "Invalid interface name, ignoring: %s", rvalue);
                return 0;
        }

        if (FUNC1(&s->bind_to_device, rvalue) < 0)
                return FUNC4();

        return 0;
}