
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_8__ {int text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_10__ {TYPE_2__* manager; } ;
struct TYPE_9__ {int obj_store; } ;
typedef TYPE_2__ SeafCommitManager ;
typedef TYPE_3__ SeafCommit ;


 int clean_utf8_data (char*,int) ;
 TYPE_3__* commit_from_json_object (char const*,int *) ;
 int g_free (char*) ;
 int json_decref (int *) ;
 int * json_loadb (char*,int,int ,TYPE_1__*) ;
 scalar_t__ seaf_obj_store_read_obj (int ,char const*,int,char const*,void**,int*) ;
 int seaf_warning (char*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static SeafCommit *
load_commit (SeafCommitManager *mgr,
             const char *repo_id,
             int version,
             const char *commit_id)
{
    char *data = ((void*)0);
    int len;
    SeafCommit *commit = ((void*)0);
    json_t *object = ((void*)0);
    json_error_t jerror;

    if (!commit_id || strlen(commit_id) != 40)
        return ((void*)0);

    if (seaf_obj_store_read_obj (mgr->obj_store, repo_id, version,
                                 commit_id, (void **)&data, &len) < 0)
        return ((void*)0);

    object = json_loadb (data, len, 0, &jerror);
    if (!object) {

        if (data[len-1] == 0)
            clean_utf8_data (data, len - 1);
        else
            clean_utf8_data (data, len);

        object = json_loadb (data, len, 0, &jerror);
        if (!object) {
            seaf_warning ("Failed to load commit json object: %s.\n", jerror.text);
            goto out;
        }
    }

    commit = commit_from_json_object (commit_id, object);
    if (commit)
        commit->manager = mgr;

out:
    if (object) json_decref (object);
    g_free (data);

    return commit;
}
