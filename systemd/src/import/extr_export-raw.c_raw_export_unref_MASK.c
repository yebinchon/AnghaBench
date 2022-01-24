#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; int /*<<< orphan*/  buffer; int /*<<< orphan*/  input_fd; int /*<<< orphan*/  event; int /*<<< orphan*/  compress; int /*<<< orphan*/  output_event_source; } ;
typedef  TYPE_1__ RawExport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

RawExport *FUNC6(RawExport *e) {
        if (!e)
                return NULL;

        FUNC4(e->output_event_source);

        FUNC1(&e->compress);

        FUNC5(e->event);

        FUNC3(e->input_fd);

        FUNC0(e->buffer);
        FUNC0(e->path);
        return FUNC2(e);
}