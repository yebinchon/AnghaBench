#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int mode_t ;
typedef  scalar_t__ guint64 ;
typedef  int guint32 ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  scalar_t__ gboolean ;
struct TYPE_6__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_5__ {int n_blocks; char** blk_sha1s; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ Seafile ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  int /*<<< orphan*/  SeafFSManager ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEAF_BACKUP_EXT ; 
 int /*<<< orphan*/  SEAF_TMP_EXT ; 
 int S_IFMT ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char const*,int,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,int,char const*,char const*,char const*) ; 
 TYPE_4__* seaf ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (char const*,scalar_t__) ; 
 int FUNC9 (char*,int,int) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 

int
FUNC17 (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *file_id,
                               const char *file_path,
                               guint32 mode,
                               guint64 mtime,
                               SeafileCrypt *crypt,
                               const char *in_repo_path,
                               const char *conflict_head_id,
                               gboolean force_conflict,
                               gboolean *conflicted,
                               const char *email)
{
    Seafile *seafile = NULL;
    char *blk_id;
    int wfd = -1;
    int i;
    char *tmp_path = NULL;
    char *backup_path = NULL;
    char *conflict_path = NULL;

    *conflicted = FALSE;

    /* Check out server version to tmp file. */

    seafile = FUNC6 (mgr, repo_id, version, file_id);
    if (!seafile) {
        FUNC13 ("File %s does not exist.\n", file_id);
        return -1;
    }

    tmp_path = FUNC3 (file_path, SEAF_TMP_EXT, NULL);

    mode_t rmode = mode & 0100 ? 0777 : 0666;
    wfd = FUNC9 (tmp_path, O_WRONLY | O_TRUNC | O_CREAT | O_BINARY,
                            rmode & ~S_IFMT);
    if (wfd < 0) {
        FUNC13 ("Failed to open file %s for checkout: %s.\n",
                   tmp_path, FUNC15(errno));
        goto bad;
    }

    for (i = 0; i < seafile->n_blocks; ++i) {
        blk_id = seafile->blk_sha1s[i];
        if (FUNC0 (repo_id, version, blk_id, wfd, crypt) < 0)
            goto bad;
    }

    FUNC1 (wfd);
    wfd = -1;

    /* Move existing file to backup file. */

    backup_path = FUNC3 (file_path, SEAF_BACKUP_EXT, NULL);

    if (FUNC10 (file_path) &&
        FUNC11 (file_path, backup_path) < 0) {
        FUNC13 ("Failed to rename %s to %s: %s. "
                      "Checkout server version as conflict file.\n",
                      file_path, backup_path, FUNC15(errno));

        *conflicted = TRUE;

        conflict_path = FUNC5 (repo_id, version,
                                                   conflict_head_id, in_repo_path,
                                                   file_path);
        if (!conflict_path)
            goto bad;

        if (FUNC11 (tmp_path, conflict_path) < 0) {
            goto bad;
        }

        goto out;
    }

    /* Now that the old existing file has been renamed to backup file,
     * this rename operation usually succeeds.
     */
    if (FUNC11 (tmp_path, file_path) < 0) {
        FUNC13 ("Failed to rename %s to %s: %s. "
                      "Checkout server version as conflict file.\n",
                      tmp_path, file_path, FUNC15(errno));

        *conflicted = TRUE;

        /* Restore the existing file. */
        if (FUNC11 (backup_path, file_path) < 0) {
            FUNC13 ("Failed to rename %s to %s: %s. "
                          "Failed to restore backup file.\n",
                          backup_path, file_path, FUNC15(errno));
        }

        conflict_path = FUNC5 (repo_id, version,
                                                   conflict_head_id, in_repo_path,
                                                   file_path);
        if (!conflict_path)
            goto bad;

        if (FUNC11 (tmp_path, conflict_path) < 0) {
            goto bad;
        }

        goto out;
    }

    if (force_conflict) {
        *conflicted = TRUE;

        /* XXX
         * In new syncing protocol and http sync, files are checked out before
         * the repo is created. So we can't get user email from repo at this point.
         * So a email parameter is needed.
         * For old syncing protocol, repo always exists when files are checked out.
         * This is a quick and dirty hack. A cleaner solution should modifiy the
         * code of old syncing protocol to pass in email too. But I don't want to
         * spend more time on the nearly obsoleted code.
         */
        const char *suffix = NULL;
        if (email) {
            suffix = email;
        } else {
            SeafRepo *repo = FUNC7 (seaf->repo_mgr, repo_id);
            if (!repo)
                goto bad;
            suffix = email;
        }

        conflict_path = FUNC4 (file_path, suffix, (gint64)FUNC16(NULL));

        if (FUNC10 (backup_path) &&
            FUNC11 (backup_path, conflict_path) < 0) {
            FUNC13 ("Failed to rename %s to %s: %s. "
                          "Failed to move backup file to conflict file.\n",
                          backup_path, conflict_path, FUNC15(errno));
        }
    }

    if (mtime > 0) {
        /* 
         * Set the checked out file mtime to what it has to be.
         */
        if (FUNC8 (file_path, mtime) < 0) {
            FUNC13 ("Failed to set mtime for %s.\n", file_path);
        }
    }

    FUNC12 (backup_path);

out:
    FUNC2 (tmp_path);
    FUNC2 (backup_path);
    FUNC2 (conflict_path);
    FUNC14 (seafile);
    return 0;

bad:
    if (wfd >= 0)
        FUNC1 (wfd);
    /* Remove the tmp file if it still exists, in case that rename fails. */
    FUNC12 (tmp_path);
    FUNC2 (tmp_path);
    FUNC2 (backup_path);
    FUNC2 (conflict_path);
    FUNC14 (seafile);
    return -1;
}