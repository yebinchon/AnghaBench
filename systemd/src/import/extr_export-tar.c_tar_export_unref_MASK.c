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
struct TYPE_6__ {int tar_pid; scalar_t__ path; scalar_t__ buffer; int /*<<< orphan*/  tar_fd; int /*<<< orphan*/  event; int /*<<< orphan*/  compress; scalar_t__ temp_path; int /*<<< orphan*/  output_event_source; } ;
typedef  TYPE_1__ TarExport ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_REMOVE_QUOTA ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

TarExport *FUNC9(TarExport *e) {
        if (!e)
                return NULL;

        FUNC6(e->output_event_source);

        if (e->tar_pid > 1) {
                (void) FUNC3(e->tar_pid, SIGKILL);
                (void) FUNC8(e->tar_pid, NULL);
        }

        if (e->temp_path) {
                (void) FUNC0(e->temp_path, BTRFS_REMOVE_QUOTA);
                FUNC1(e->temp_path);
        }

        FUNC2(&e->compress);

        FUNC7(e->event);

        FUNC5(e->tar_fd);

        FUNC1(e->buffer);
        FUNC1(e->path);
        return FUNC4(e);
}