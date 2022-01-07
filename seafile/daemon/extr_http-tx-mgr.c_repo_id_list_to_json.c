
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {char* data; struct TYPE_3__* next; } ;
typedef TYPE_1__ GList ;


 int JSON_COMPACT ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_string (char*) ;
 int seaf_warning (char*) ;

__attribute__((used)) static char *
repo_id_list_to_json (GList *repo_id_list)
{
    json_t *array = json_array();
    GList *ptr;
    char *repo_id;

    for (ptr = repo_id_list; ptr; ptr = ptr->next) {
        repo_id = ptr->data;
        json_array_append_new (array, json_string(repo_id));
    }

    char *data = json_dumps (array, JSON_COMPACT);
    if (!data) {
        seaf_warning ("Failed to dump json.\n");
        json_decref (array);
        return ((void*)0);
    }

    json_decref (array);
    return data;
}
