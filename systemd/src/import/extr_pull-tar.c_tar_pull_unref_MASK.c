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
struct TYPE_6__ {int tar_pid; scalar_t__ local; scalar_t__ image_root; scalar_t__ settings_path; scalar_t__ final_path; scalar_t__ settings_temp_path; scalar_t__ temp_path; int /*<<< orphan*/  event; int /*<<< orphan*/  glue; int /*<<< orphan*/  signature_job; int /*<<< orphan*/  checksum_job; int /*<<< orphan*/  settings_job; int /*<<< orphan*/  tar_job; } ;
typedef  TYPE_1__ TarPull ;

/* Variables and functions */
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int REMOVE_SUBVOLUME ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

TarPull* FUNC9(TarPull *i) {
        if (!i)
                return NULL;

        if (i->tar_pid > 1) {
                (void) FUNC2(i->tar_pid, SIGKILL);
                (void) FUNC8(i->tar_pid, NULL);
        }

        FUNC4(i->tar_job);
        FUNC4(i->settings_job);
        FUNC4(i->checksum_job);
        FUNC4(i->signature_job);

        FUNC0(i->glue);
        FUNC6(i->event);

        if (i->temp_path) {
                (void) FUNC5(i->temp_path, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);
                FUNC1(i->temp_path);
        }

        if (i->settings_temp_path) {
                (void) FUNC7(i->settings_temp_path);
                FUNC1(i->settings_temp_path);
        }

        FUNC1(i->final_path);
        FUNC1(i->settings_path);
        FUNC1(i->image_root);
        FUNC1(i->local);

        return FUNC3(i);
}