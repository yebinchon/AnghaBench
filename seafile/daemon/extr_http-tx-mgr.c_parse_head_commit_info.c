
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_5__ {int text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_6__ {int head_commit; int repo_id; int is_corrupt; } ;
typedef TYPE_2__ CheckHeadData ;


 int TRUE ;
 int json_decref (int *) ;
 int * json_loadb (char const*,int,int ,TYPE_1__*) ;
 scalar_t__ json_object_get_int_member (int *,char*) ;
 char* json_object_get_string_member (int *,char*) ;
 scalar_t__ json_object_has_member (int *,char*) ;
 int memcpy (int ,char const*,int) ;
 int seaf_warning (char*,int ) ;

__attribute__((used)) static int
parse_head_commit_info (const char *rsp_content, int rsp_size, CheckHeadData *data)
{
    json_t *object = ((void*)0);
    json_error_t jerror;
    const char *head_commit;

    object = json_loadb (rsp_content, rsp_size, 0, &jerror);
    if (!object) {
        seaf_warning ("Parse response failed: %s.\n", jerror.text);
        return -1;
    }

    if (json_object_has_member (object, "is_corrupted") &&
        json_object_get_int_member (object, "is_corrupted"))
        data->is_corrupt = TRUE;

    if (!data->is_corrupt) {
        head_commit = json_object_get_string_member (object, "head_commit_id");
        if (!head_commit) {
            seaf_warning ("Check head commit for repo %s failed. "
                          "Response doesn't contain head commit id.\n",
                          data->repo_id);
            json_decref (object);
            return -1;
        }
        memcpy (data->head_commit, head_commit, 40);
    }

    json_decref (object);
    return 0;
}
