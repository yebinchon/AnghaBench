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
struct instance {struct context* ctx; } ;
struct context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct context* FUNC2 (struct instance*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct instance*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct context *
FUNC7(struct instance *nci)
{
    struct context *ctx;

    FUNC4(nci);
    FUNC6();
    FUNC1();

    ctx = FUNC2(nci);
    if (ctx != NULL) {
        nci->ctx = ctx;
        return ctx;
    }

    FUNC0();
    FUNC5();
    FUNC3();

    return NULL;
}