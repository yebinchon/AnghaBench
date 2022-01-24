#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
union in_addr_union {TYPE_1__ in; } ;
typedef  void* uint32_t ;
struct TYPE_4__ {void* okey; void* ikey; void* key; } ;
typedef  TYPE_2__ Tunnel ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char const*,void**) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

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
        union in_addr_union buffer;
        Tunnel *t = userdata;
        uint32_t k;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC2(AF_INET, rvalue, &buffer);
        if (r < 0) {
                r = FUNC4(rvalue, &k);
                if (r < 0) {
                        FUNC3(unit, LOG_ERR, filename, line, 0, "Failed to parse tunnel key ignoring assignment: %s", rvalue);
                        return 0;
                }
        } else
                k = FUNC1(buffer.in.s_addr);

        if (FUNC5(lvalue, "Key"))
                t->key = k;
        else if (FUNC5(lvalue, "InputKey"))
                t->ikey = k;
        else
                t->okey = k;

        return 0;
}