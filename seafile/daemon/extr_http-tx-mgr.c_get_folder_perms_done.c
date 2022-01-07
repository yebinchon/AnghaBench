
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cb_data ;
struct TYPE_10__ {scalar_t__ data; struct TYPE_10__* next; } ;
struct TYPE_9__ {struct TYPE_9__* host; TYPE_3__* results; int user_data; int (* callback ) (TYPE_1__*,int ) ;int success; } ;
struct TYPE_8__ {TYPE_3__* results; int success; } ;
typedef TYPE_1__ HttpFolderPerms ;
typedef int HttpFolderPermRes ;
typedef TYPE_2__ GetFolderPermsData ;
typedef TYPE_3__ GList ;


 int g_free (TYPE_2__*) ;
 int g_list_free (TYPE_3__*) ;
 int http_folder_perm_res_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
get_folder_perms_done (void *vdata)
{
    GetFolderPermsData *data = vdata;
    HttpFolderPerms cb_data;

    memset (&cb_data, 0, sizeof(cb_data));
    cb_data.success = data->success;
    cb_data.results = data->results;

    data->callback (&cb_data, data->user_data);

    GList *ptr;
    for (ptr = data->results; ptr; ptr = ptr->next)
        http_folder_perm_res_free ((HttpFolderPermRes *)ptr->data);
    g_list_free (data->results);

    g_free (data->host);
    g_free (data);
}
