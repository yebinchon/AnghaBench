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
struct TYPE_6__ {scalar_t__ local; scalar_t__ image_root; scalar_t__ settings_path; scalar_t__ roothash_path; scalar_t__ final_path; scalar_t__ settings_temp_path; scalar_t__ roothash_temp_path; scalar_t__ temp_path; int /*<<< orphan*/  event; int /*<<< orphan*/  glue; int /*<<< orphan*/  signature_job; int /*<<< orphan*/  checksum_job; int /*<<< orphan*/  roothash_job; int /*<<< orphan*/  settings_job; int /*<<< orphan*/  raw_job; } ;
typedef  TYPE_1__ RawPull ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

RawPull* FUNC6(RawPull *i) {
        if (!i)
                return NULL;

        FUNC3(i->raw_job);
        FUNC3(i->settings_job);
        FUNC3(i->roothash_job);
        FUNC3(i->checksum_job);
        FUNC3(i->signature_job);

        FUNC0(i->glue);
        FUNC4(i->event);

        if (i->temp_path) {
                (void) FUNC5(i->temp_path);
                FUNC1(i->temp_path);
        }

        if (i->roothash_temp_path) {
                (void) FUNC5(i->roothash_temp_path);
                FUNC1(i->roothash_temp_path);
        }

        if (i->settings_temp_path) {
                (void) FUNC5(i->settings_temp_path);
                FUNC1(i->settings_temp_path);
        }

        FUNC1(i->final_path);
        FUNC1(i->roothash_path);
        FUNC1(i->settings_path);
        FUNC1(i->image_root);
        FUNC1(i->local);
        return FUNC2(i);
}