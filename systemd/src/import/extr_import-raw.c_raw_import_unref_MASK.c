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
struct TYPE_6__ {scalar_t__ local; scalar_t__ image_root; scalar_t__ final_path; int /*<<< orphan*/  output_fd; int /*<<< orphan*/  input_event_source; int /*<<< orphan*/  compress; scalar_t__ temp_path; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ RawImport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

RawImport* FUNC7(RawImport *i) {
        if (!i)
                return NULL;

        FUNC5(i->event);

        if (i->temp_path) {
                (void) FUNC6(i->temp_path);
                FUNC0(i->temp_path);
        }

        FUNC1(&i->compress);

        FUNC4(i->input_event_source);

        FUNC3(i->output_fd);

        FUNC0(i->final_path);
        FUNC0(i->image_root);
        FUNC0(i->local);
        return FUNC2(i);
}