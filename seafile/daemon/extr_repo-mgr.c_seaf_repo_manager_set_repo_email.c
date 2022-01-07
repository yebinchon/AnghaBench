
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int email; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int REPO_PROP_EMAIL ;
 int g_free (int ) ;
 int g_strdup (char const*) ;
 int save_repo_property (int *,int ,int ,char const*) ;

int
seaf_repo_manager_set_repo_email (SeafRepoManager *mgr,
                                  SeafRepo *repo,
                                  const char *email)
{
    g_free (repo->email);
    repo->email = g_strdup(email);

    save_repo_property (mgr, repo->id, REPO_PROP_EMAIL, email);
    return 0;
}
