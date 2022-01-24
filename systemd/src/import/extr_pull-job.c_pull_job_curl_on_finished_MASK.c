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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct timespec {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; int etag_exists; scalar_t__ style; scalar_t__ content_length; scalar_t__ written_compressed; scalar_t__ disk_fd; scalar_t__ mtime; scalar_t__ url; scalar_t__ etag; int /*<<< orphan*/  written_uncompressed; scalar_t__ allow_sparse; int /*<<< orphan*/  checksum; scalar_t__ checksum_context; int /*<<< orphan*/ * curl; } ;
typedef  TYPE_1__ PullJob ;
typedef  int /*<<< orphan*/  CurlGlue ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_PRIVATE ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int EIO ; 
 int /*<<< orphan*/  GCRY_MD_SHA256 ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PULL_JOB_DONE ; 
 int /*<<< orphan*/  PULL_JOB_FAILED ; 
 scalar_t__ PULL_JOB_RUNNING ; 
 scalar_t__ VERIFICATION_PER_DIRECTORY ; 
 scalar_t__ VERIFICATION_PER_FILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct timespec*,scalar_t__) ; 

void FUNC19(CurlGlue *g, CURL *curl, CURLcode result) {
        PullJob *j = NULL;
        CURLcode code;
        long status;
        int r;

        if (FUNC1(curl, CURLINFO_PRIVATE, (char **)&j) != CURLE_OK)
                return;

        if (!j || FUNC0(j->state, PULL_JOB_DONE, PULL_JOB_FAILED))
                return;

        if (result != CURLE_OK) {
                FUNC11("Transfer failed: %s", FUNC2(result));
                r = -EIO;
                goto finish;
        }

        code = FUNC1(curl, CURLINFO_RESPONSE_CODE, &status);
        if (code != CURLE_OK) {
                FUNC11("Failed to retrieve response code: %s", FUNC2(code));
                r = -EIO;
                goto finish;
        } else if (status == 304) {
                FUNC13("Image already downloaded. Skipping download.");
                j->etag_exists = true;
                r = 0;
                goto finish;
        } else if (status >= 300) {
                if (status == 404 && j->style == VERIFICATION_PER_FILE) {

                        /* retry pull job with SHA256SUMS file */
                        r = FUNC16(j);
                        if (r < 0)
                                goto finish;

                        code = FUNC1(j->curl, CURLINFO_RESPONSE_CODE, &status);
                        if (code != CURLE_OK) {
                                FUNC11("Failed to retrieve response code: %s", FUNC2(code));
                                r = -EIO;
                                goto finish;
                        }

                        if (status == 0) {
                                j->style = VERIFICATION_PER_DIRECTORY;
                                return;
                        }
                }

                FUNC11("HTTP request to %s failed with code %li.", j->url, status);
                r = -EIO;
                goto finish;
        } else if (status < 200) {
                FUNC11("HTTP request to %s finished with unexpected code %li.", j->url, status);
                r = -EIO;
                goto finish;
        }

        if (j->state != PULL_JOB_RUNNING) {
                FUNC11("Premature connection termination.");
                r = -EIO;
                goto finish;
        }

        if (j->content_length != (uint64_t) -1 &&
            j->content_length != j->written_compressed) {
                FUNC11("Download truncated.");
                r = -EIO;
                goto finish;
        }

        if (j->checksum_context) {
                uint8_t *k;

                k = FUNC8(j->checksum_context, GCRY_MD_SHA256);
                if (!k) {
                        FUNC11("Failed to get checksum.");
                        r = -EIO;
                        goto finish;
                }

                j->checksum = FUNC9(k, FUNC7(GCRY_MD_SHA256));
                if (!j->checksum) {
                        r = FUNC14();
                        goto finish;
                }

                FUNC10("SHA256 of %s is %s.", j->url, j->checksum);
        }

        if (j->disk_fd >= 0 && j->allow_sparse) {
                /* Make sure the file size is right, in case the file was
                 * sparse and we just seeked for the last part */

                if (FUNC5(j->disk_fd, j->written_uncompressed) < 0) {
                        r = FUNC12(errno, "Failed to truncate file: %m");
                        goto finish;
                }

                if (j->etag)
                        (void) FUNC4(j->disk_fd, "user.source_etag", j->etag, FUNC17(j->etag), 0);
                if (j->url)
                        (void) FUNC4(j->disk_fd, "user.source_url", j->url, FUNC17(j->url), 0);

                if (j->mtime != 0) {
                        struct timespec ut[2];

                        FUNC18(&ut[0], j->mtime);
                        ut[1] = ut[0];
                        (void) FUNC6(j->disk_fd, ut);

                        (void) FUNC3(j->disk_fd, j->mtime);
                }
        }

        r = 0;

finish:
        FUNC15(j, r);
}