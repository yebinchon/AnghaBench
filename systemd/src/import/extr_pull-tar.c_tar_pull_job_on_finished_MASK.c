#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_13__ ;

/* Type definitions */
struct TYPE_21__ {int error; scalar_t__ style; scalar_t__ tar_pid; int /*<<< orphan*/  event; struct TYPE_21__* userdata; int /*<<< orphan*/  (* on_finished ) (TYPE_1__*,int,TYPE_1__*) ;struct TYPE_21__* settings_temp_path; struct TYPE_21__* settings_path; struct TYPE_21__* settings_job; struct TYPE_21__* temp_path; struct TYPE_21__* final_path; struct TYPE_21__* signature_job; struct TYPE_21__* checksum_job; TYPE_13__* tar_job; void* disk_fd; } ;
typedef  TYPE_1__ TarPull ;
struct TYPE_20__ {int /*<<< orphan*/  etag_exists; void* disk_fd; } ;
typedef  TYPE_1__ PullJob ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int EIO ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  TAR_COPYING ; 
 int /*<<< orphan*/  TAR_FINALIZING ; 
 int /*<<< orphan*/  TAR_VERIFYING ; 
 scalar_t__ VERIFICATION_PER_DIRECTORY ; 
 int /*<<< orphan*/  WAIT_LOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_13__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(PullJob *j) {
        TarPull *i;
        int r;

        FUNC0(j);
        FUNC0(j->userdata);

        i = j->userdata;

        if (j == i->settings_job) {
                if (j->error != 0)
                        FUNC3(j->error, "Settings file could not be retrieved, proceeding without.");
        } else if (j->error != 0 && j != i->signature_job) {
                if (j == i->checksum_job)
                        FUNC2(j->error, "Failed to retrieve SHA256 checksum, cannot verify. (Try --verify=no?)");
                else
                        FUNC2(j->error, "Failed to retrieve image file. (Wrong URL?)");

                r = j->error;
                goto finish;
        }

        /* This is invoked if either the download completed
         * successfully, or the download was skipped because we
         * already have the etag. */

        if (!FUNC11(i))
                return;

        if (i->signature_job && i->checksum_job->style == VERIFICATION_PER_DIRECTORY && i->signature_job->error != 0) {
                FUNC2(j->error, "Failed to retrieve signature file, cannot verify. (Try --verify=no?)");

                r = i->signature_job->error;
                goto finish;
        }

        i->tar_job->disk_fd = FUNC7(i->tar_job->disk_fd);
        if (i->settings_job)
                i->settings_job->disk_fd = FUNC7(i->settings_job->disk_fd);

        r = FUNC10(i, NULL, &i->final_path);
        if (r < 0)
                goto finish;

        if (i->tar_pid > 0) {
                r = FUNC14("tar", i->tar_pid, WAIT_LOG);
                i->tar_pid = 0;
                if (r < 0)
                        goto finish;
                if (r != EXIT_SUCCESS) {
                        r = -EIO;
                        goto finish;
                }
        }

        if (!i->tar_job->etag_exists) {
                /* This is a new download, verify it, and move it into place */

                FUNC13(i, TAR_VERIFYING);

                r = FUNC5(i->tar_job, NULL, i->settings_job, i->checksum_job, i->signature_job);
                if (r < 0)
                        goto finish;

                FUNC13(i, TAR_FINALIZING);

                r = FUNC1(i->temp_path);
                if (r < 0)
                        goto finish;

                r = FUNC6(AT_FDCWD, i->temp_path, AT_FDCWD, i->final_path);
                if (r < 0) {
                        FUNC2(r, "Failed to rename to final image name to %s: %m", i->final_path);
                        goto finish;
                }

                i->temp_path = FUNC4(i->temp_path);

                if (i->settings_job &&
                    i->settings_job->error == 0) {

                        /* Also move the settings file into place, if it exists. Note that we do so only if we also
                         * moved the tar file in place, to keep things strictly in sync. */
                        FUNC0(i->settings_temp_path);

                        /* Regenerate final name for this auxiliary file, we might know the etag of the file now, and
                         * we should incorporate it in the file name if we can */
                        i->settings_path = FUNC4(i->settings_path);

                        r = FUNC10(i, ".nspawn", &i->settings_path);
                        if (r < 0)
                                goto finish;

                        r = FUNC1(i->settings_temp_path);
                        if (r < 0)
                                goto finish;

                        r = FUNC6(AT_FDCWD, i->settings_temp_path, AT_FDCWD, i->settings_path);
                        if (r < 0) {
                                FUNC2(r, "Failed to rename settings file to %s: %m", i->settings_path);
                                goto finish;
                        }

                        i->settings_temp_path = FUNC4(i->settings_temp_path);
                }
        }

        FUNC13(i, TAR_COPYING);

        r = FUNC12(i);
        if (r < 0)
                goto finish;

        r = 0;

finish:
        if (i->on_finished)
                i->on_finished(i, r, i->userdata);
        else
                FUNC8(i->event, r);
}