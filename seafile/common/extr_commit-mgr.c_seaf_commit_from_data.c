
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int gsize ;
typedef int SeafCommit ;


 int clean_utf8_data (char*,int) ;
 int * commit_from_json_object (char const*,int *) ;
 int json_decref (int *) ;
 int * json_loadb (char*,int,int ,TYPE_1__*) ;
 int seaf_warning (char*,int ) ;

SeafCommit *
seaf_commit_from_data (const char *id, char *data, gsize len)
{
    json_t *object;
    SeafCommit *commit;
    json_error_t jerror;

    object = json_loadb (data, len, 0, &jerror);
    if (!object) {

        if (data[len-1] == 0)
            clean_utf8_data (data, len - 1);
        else
            clean_utf8_data (data, len);

        object = json_loadb (data, len, 0, &jerror);
        if (!object) {
            seaf_warning ("Failed to load commit json: %s.\n", jerror.text);
            return ((void*)0);
        }
    }

    commit = commit_from_json_object (id, object);

    json_decref (object);

    return commit;
}
