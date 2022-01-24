#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ RunContext ;
typedef  int /*<<< orphan*/  PTYForward ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(PTYForward *f, int rcode, void *userdata) {
        RunContext *c = userdata;

        FUNC0(f);

        if (rcode < 0) {
                FUNC3(c->event, EXIT_FAILURE);
                return FUNC1(rcode, "Error on PTY forwarding logic: %m");
        }

        FUNC2(c);
        return 0;
}