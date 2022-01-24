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
struct TYPE_2__ {int /*<<< orphan*/  cpu_set; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int,char const*,char const*,unsigned int,char const*) ; 

int FUNC2(const char *unit,
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

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        return FUNC1(rvalue, &c->cpu_set, true, unit, filename, line, lvalue);
}