
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo_mgr; } ;
typedef int SeafRepo ;
typedef int GObject ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int * convert_repo (int *) ;
 int g_set_error (int **,int ,int ,char*) ;
 int is_uuid_valid (char const*) ;
 TYPE_1__* seaf ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;

GObject*
seafile_get_repo (const char *repo_id, GError **error)
{
    SeafRepo *r;

    if (!repo_id) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return ((void*)0);
    }
    if (!is_uuid_valid (repo_id)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return ((void*)0);
    }

    r = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);

    if (r == ((void*)0))
        return ((void*)0);

    GObject *repo = convert_repo (r);

    return repo;
}
