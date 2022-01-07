
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int json_t ;
struct TYPE_4__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int gboolean ;
struct TYPE_5__ {void* repo_salt; void* server_url; int is_readonly; } ;
typedef TYPE_2__ CloneTask ;


 int FALSE ;
 void* g_strdup (int ) ;
 int json_decref (int *) ;
 int json_integer_value (int *) ;
 int * json_loads (char const*,int ,TYPE_1__*) ;
 int * json_object_get (int *,char*) ;
 int json_string_value (int *) ;
 int seaf_warning (char*,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
load_more_info_cb (sqlite3_stmt *stmt, void *data)
{
    CloneTask *task = data;
    json_error_t jerror;
    json_t *object = ((void*)0);
    const char *more_info;

    more_info = (const char *)sqlite3_column_text (stmt, 0);
    object = json_loads (more_info, 0, &jerror);
    if (!object) {
        seaf_warning ("Failed to load more sync info from json: %s.\n", jerror.text);
        return FALSE;
    }

    json_t *integer = json_object_get (object, "is_readonly");
    task->is_readonly = json_integer_value (integer);
    json_t *string = json_object_get (object, "server_url");
    if (string)
        task->server_url = g_strdup (json_string_value (string));
    json_t *repo_salt = json_object_get (object, "repo_salt");
    if (repo_salt)
        task->repo_salt = g_strdup (json_string_value (repo_salt));
    json_decref (object);

    return FALSE;
}
