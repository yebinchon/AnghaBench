
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mode_t ;
typedef scalar_t__ guint64 ;
typedef int guint32 ;
typedef int gint64 ;
typedef scalar_t__ gboolean ;
struct TYPE_6__ {int repo_mgr; } ;
struct TYPE_5__ {int n_blocks; char** blk_sha1s; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ Seafile ;
typedef int SeafRepo ;
typedef int SeafFSManager ;


 scalar_t__ FALSE ;
 int O_BINARY ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEAF_BACKUP_EXT ;
 int SEAF_TMP_EXT ;
 int S_IFMT ;
 scalar_t__ TRUE ;
 scalar_t__ checkout_block (char const*,int,char*,int,int *) ;
 int close (int) ;
 int errno ;
 int g_free (char*) ;
 char* g_strconcat (char const*,int ,int *) ;
 char* gen_conflict_path (char const*,char const*,int ) ;
 char* gen_conflict_path_wrapper (char const*,int,char const*,char const*,char const*) ;
 TYPE_4__* seaf ;
 TYPE_1__* seaf_fs_manager_get_seafile (int *,char const*,int,char const*) ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;
 scalar_t__ seaf_set_file_time (char const*,scalar_t__) ;
 int seaf_util_create (char*,int,int) ;
 scalar_t__ seaf_util_exists (char const*) ;
 scalar_t__ seaf_util_rename (char const*,char const*) ;
 int seaf_util_unlink (char*) ;
 int seaf_warning (char*,char const*,...) ;
 int seafile_unref (TYPE_1__*) ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;

int
seaf_fs_manager_checkout_file (SeafFSManager *mgr,
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
    Seafile *seafile = ((void*)0);
    char *blk_id;
    int wfd = -1;
    int i;
    char *tmp_path = ((void*)0);
    char *backup_path = ((void*)0);
    char *conflict_path = ((void*)0);

    *conflicted = FALSE;



    seafile = seaf_fs_manager_get_seafile (mgr, repo_id, version, file_id);
    if (!seafile) {
        seaf_warning ("File %s does not exist.\n", file_id);
        return -1;
    }

    tmp_path = g_strconcat (file_path, SEAF_TMP_EXT, ((void*)0));

    mode_t rmode = mode & 0100 ? 0777 : 0666;
    wfd = seaf_util_create (tmp_path, O_WRONLY | O_TRUNC | O_CREAT | O_BINARY,
                            rmode & ~S_IFMT);
    if (wfd < 0) {
        seaf_warning ("Failed to open file %s for checkout: %s.\n",
                   tmp_path, strerror(errno));
        goto bad;
    }

    for (i = 0; i < seafile->n_blocks; ++i) {
        blk_id = seafile->blk_sha1s[i];
        if (checkout_block (repo_id, version, blk_id, wfd, crypt) < 0)
            goto bad;
    }

    close (wfd);
    wfd = -1;



    backup_path = g_strconcat (file_path, SEAF_BACKUP_EXT, ((void*)0));

    if (seaf_util_exists (file_path) &&
        seaf_util_rename (file_path, backup_path) < 0) {
        seaf_warning ("Failed to rename %s to %s: %s. "
                      "Checkout server version as conflict file.\n",
                      file_path, backup_path, strerror(errno));

        *conflicted = TRUE;

        conflict_path = gen_conflict_path_wrapper (repo_id, version,
                                                   conflict_head_id, in_repo_path,
                                                   file_path);
        if (!conflict_path)
            goto bad;

        if (seaf_util_rename (tmp_path, conflict_path) < 0) {
            goto bad;
        }

        goto out;
    }




    if (seaf_util_rename (tmp_path, file_path) < 0) {
        seaf_warning ("Failed to rename %s to %s: %s. "
                      "Checkout server version as conflict file.\n",
                      tmp_path, file_path, strerror(errno));

        *conflicted = TRUE;


        if (seaf_util_rename (backup_path, file_path) < 0) {
            seaf_warning ("Failed to rename %s to %s: %s. "
                          "Failed to restore backup file.\n",
                          backup_path, file_path, strerror(errno));
        }

        conflict_path = gen_conflict_path_wrapper (repo_id, version,
                                                   conflict_head_id, in_repo_path,
                                                   file_path);
        if (!conflict_path)
            goto bad;

        if (seaf_util_rename (tmp_path, conflict_path) < 0) {
            goto bad;
        }

        goto out;
    }

    if (force_conflict) {
        *conflicted = TRUE;
        const char *suffix = ((void*)0);
        if (email) {
            suffix = email;
        } else {
            SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
            if (!repo)
                goto bad;
            suffix = email;
        }

        conflict_path = gen_conflict_path (file_path, suffix, (gint64)time(((void*)0)));

        if (seaf_util_exists (backup_path) &&
            seaf_util_rename (backup_path, conflict_path) < 0) {
            seaf_warning ("Failed to rename %s to %s: %s. "
                          "Failed to move backup file to conflict file.\n",
                          backup_path, conflict_path, strerror(errno));
        }
    }

    if (mtime > 0) {



        if (seaf_set_file_time (file_path, mtime) < 0) {
            seaf_warning ("Failed to set mtime for %s.\n", file_path);
        }
    }

    seaf_util_unlink (backup_path);

out:
    g_free (tmp_path);
    g_free (backup_path);
    g_free (conflict_path);
    seafile_unref (seafile);
    return 0;

bad:
    if (wfd >= 0)
        close (wfd);

    seaf_util_unlink (tmp_path);
    g_free (tmp_path);
    g_free (backup_path);
    g_free (conflict_path);
    seafile_unref (seafile);
    return -1;
}
