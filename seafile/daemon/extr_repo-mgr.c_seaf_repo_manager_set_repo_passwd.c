
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int enc_iv; int enc_key; int salt; int random_key; int enc_version; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int db_lock; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int save_repo_enc_info (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ seafile_decrypt_repo_enc_key (int ,char const*,int ,int ,int ,int ) ;

int
seaf_repo_manager_set_repo_passwd (SeafRepoManager *manager,
                                   SeafRepo *repo,
                                   const char *passwd)
{
    int ret;

    if (seafile_decrypt_repo_enc_key (repo->enc_version, passwd, repo->random_key,
                                      repo->salt,
                                      repo->enc_key, repo->enc_iv) < 0)
        return -1;

    pthread_mutex_lock (&manager->priv->db_lock);

    ret = save_repo_enc_info (manager, repo);

    pthread_mutex_unlock (&manager->priv->db_lock);

    return ret;
}
