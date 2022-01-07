
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int json_t ;
typedef scalar_t__ gsize ;
struct TYPE_7__ {int commit_id; } ;
struct TYPE_6__ {int obj_store; } ;
typedef TYPE_1__ SeafCommitManager ;
typedef TYPE_2__ SeafCommit ;


 int FALSE ;
 int TRUE ;
 int * commit_to_json_object (TYPE_2__*) ;
 int free (char*) ;
 int g_free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 scalar_t__ seaf_obj_store_write_obj (int ,char const*,int,int ,char*,int,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
save_commit (SeafCommitManager *manager,
             const char *repo_id,
             int version,
             SeafCommit *commit)
{
    json_t *object = ((void*)0);
    char *data;
    gsize len;

    object = commit_to_json_object (commit);

    data = json_dumps (object, 0);
    len = strlen (data);

    json_decref (object);
    if (seaf_obj_store_write_obj (manager->obj_store,
                                  repo_id, version,
                                  commit->commit_id,
                                  data, (int)len, FALSE) < 0) {
        g_free (data);
        return -1;
    }

    free (data);

    return 0;
}
