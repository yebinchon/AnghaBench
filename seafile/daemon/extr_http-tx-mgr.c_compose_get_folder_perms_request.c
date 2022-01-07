
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_5__ {TYPE_1__* data; struct TYPE_5__* next; } ;
struct TYPE_4__ {int timestamp; int token; int repo_id; } ;
typedef TYPE_1__ HttpFolderPermReq ;
typedef TYPE_2__ GList ;


 int * json_array () ;
 int json_array_append_new (int *,int *) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_integer (int ) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int json_string (int ) ;
 int seaf_warning (char*) ;

__attribute__((used)) static char *
compose_get_folder_perms_request (GList *requests)
{
    GList *ptr;
    HttpFolderPermReq *req;
    json_t *object, *array;
    char *req_str = ((void*)0);

    array = json_array ();

    for (ptr = requests; ptr; ptr = ptr->next) {
        req = ptr->data;

        object = json_object ();
        json_object_set_new (object, "repo_id", json_string(req->repo_id));
        json_object_set_new (object, "token", json_string(req->token));
        json_object_set_new (object, "ts", json_integer(req->timestamp));

        json_array_append_new (array, object);
    }

    req_str = json_dumps (array, 0);
    if (!req_str) {
        seaf_warning ("Faile to json_dumps.\n");
    }

    json_decref (array);
    return req_str;
}
