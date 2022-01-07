
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef int SeafCloneManager ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int S_ISDIR (int ) ;
 int g_free (char*) ;
 int g_set_error (int **,int ,int ,char*) ;
 char* g_strdup (char const*) ;
 scalar_t__ is_worktree_of_repo (int *,char*) ;
 int remove_trail_slash (char*) ;
 int seaf_stat (char*,TYPE_1__*) ;
 char* try_worktree (char*) ;

__attribute__((used)) static char *
make_worktree (SeafCloneManager *mgr,
               const char *worktree,
               gboolean dry_run,
               GError **error)
{
    char *wt = g_strdup (worktree);
    SeafStat st;
    int rc;
    char *ret;

    remove_trail_slash (wt);

    rc = seaf_stat (wt, &st);
    if (rc < 0) {
        ret = wt;
        return ret;
    } else if (!S_ISDIR(st.st_mode)) {
        if (!dry_run) {
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Invalid local directory");
            g_free (wt);
            return ((void*)0);
        }
        ret = try_worktree (wt);
        g_free (wt);
        return ret;
    }



    if (is_worktree_of_repo (mgr, wt)) {
        if (!dry_run) {
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Already in sync");
            g_free (wt);
            return ((void*)0);
        }
        ret = try_worktree (wt);
        g_free (wt);
    } else {
        return wt;
    }

    return ret;
}
