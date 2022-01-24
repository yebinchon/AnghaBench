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
struct TYPE_2__ {int ioprio_set; void* ioprio; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  IOPRIO_CLASS_BE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (char const*,int*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 

int FUNC6(const char *unit,
                                  const char *filename,
                                  unsigned line,
                                  const char *section,
                                  unsigned section_line,
                                  const char *lvalue,
                                  int ltype,
                                  const char *rvalue,
                                  void *data,
                                  void *userdata) {

        ExecContext *c = data;
        int i, r;

        FUNC2(filename);
        FUNC2(lvalue);
        FUNC2(rvalue);
        FUNC2(data);

        if (FUNC4(rvalue)) {
                c->ioprio_set = false;
                c->ioprio = FUNC1(IOPRIO_CLASS_BE, 0);
                return 0;
        }

        r = FUNC3(rvalue, &i);
        if (r < 0) {
                FUNC5(unit, LOG_ERR, filename, line, r, "Failed to parse IO priority, ignoring: %s", rvalue);
                return 0;
        }

        c->ioprio = FUNC1(FUNC0(c->ioprio), i);
        c->ioprio_set = true;

        return 0;
}