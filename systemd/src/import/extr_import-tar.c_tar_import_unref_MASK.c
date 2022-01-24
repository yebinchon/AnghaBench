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
struct TYPE_6__ {int tar_pid; scalar_t__ local; scalar_t__ image_root; scalar_t__ final_path; int /*<<< orphan*/  tar_fd; int /*<<< orphan*/  event; int /*<<< orphan*/  compress; scalar_t__ temp_path; int /*<<< orphan*/  input_event_source; } ;
typedef  TYPE_1__ TarImport ;

/* Variables and functions */
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int REMOVE_SUBVOLUME ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

TarImport* FUNC9(TarImport *i) {
        if (!i)
                return NULL;

        FUNC6(i->input_event_source);

        if (i->tar_pid > 1) {
                (void) FUNC2(i->tar_pid, SIGKILL);
                (void) FUNC8(i->tar_pid, NULL);
        }

        if (i->temp_path) {
                (void) FUNC4(i->temp_path, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);
                FUNC0(i->temp_path);
        }

        FUNC1(&i->compress);

        FUNC7(i->event);

        FUNC5(i->tar_fd);

        FUNC0(i->final_path);
        FUNC0(i->image_root);
        FUNC0(i->local);
        return FUNC3(i);
}