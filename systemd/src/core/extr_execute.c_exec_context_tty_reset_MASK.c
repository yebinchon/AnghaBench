#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ tty_vt_disallocate; scalar_t__ tty_reset; scalar_t__ tty_vhangup; } ;
struct TYPE_7__ {scalar_t__ stdin_fd; } ;
typedef  TYPE_1__ ExecParameters ;
typedef  TYPE_2__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 char* FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(const ExecContext *context, const ExecParameters *p) {
        const char *path;

        FUNC0(context);

        path = FUNC1(context);

        if (context->tty_vhangup) {
                if (p && p->stdin_fd >= 0)
                        (void) FUNC5(p->stdin_fd);
                else if (path)
                        (void) FUNC4(path);
        }

        if (context->tty_reset) {
                if (p && p->stdin_fd >= 0)
                        (void) FUNC3(p->stdin_fd, true);
                else if (path)
                        (void) FUNC2(path);
        }

        if (context->tty_vt_disallocate && path)
                (void) FUNC6(path);
}