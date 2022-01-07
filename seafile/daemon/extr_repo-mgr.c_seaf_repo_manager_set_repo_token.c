
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int token; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int REPO_PROP_TOKEN ;
 int g_free (int ) ;
 int g_strdup (char const*) ;
 int save_repo_property (int *,int ,int ,char const*) ;

int
seaf_repo_manager_set_repo_token (SeafRepoManager *manager,
                                  SeafRepo *repo,
                                  const char *token)
{
    g_free (repo->token);
    repo->token = g_strdup(token);

    save_repo_property (manager, repo->id, REPO_PROP_TOKEN, token);
    return 0;
}
