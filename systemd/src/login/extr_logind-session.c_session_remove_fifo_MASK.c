#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fifo_path; int /*<<< orphan*/  fifo_fd; int /*<<< orphan*/  fifo_event_source; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(Session *s) {
        FUNC0(s);

        s->fifo_event_source = FUNC3(s->fifo_event_source);
        s->fifo_fd = FUNC2(s->fifo_fd);

        if (s->fifo_path) {
                (void) FUNC4(s->fifo_path);
                s->fifo_path = FUNC1(s->fifo_path);
        }
}