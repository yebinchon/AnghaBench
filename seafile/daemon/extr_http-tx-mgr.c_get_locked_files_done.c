
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cb_data ;
struct TYPE_7__ {struct TYPE_7__* host; int results; int user_data; int (* callback ) (TYPE_1__*,int ) ;int success; } ;
struct TYPE_6__ {int results; int success; } ;
typedef TYPE_1__ HttpLockedFiles ;
typedef TYPE_2__ GetLockedFilesData ;
typedef int GDestroyNotify ;


 int g_free (TYPE_2__*) ;
 int g_list_free_full (int ,int ) ;
 scalar_t__ http_locked_files_res_free ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
get_locked_files_done (void *vdata)
{
    GetLockedFilesData *data = vdata;
    HttpLockedFiles cb_data;

    memset (&cb_data, 0, sizeof(cb_data));
    cb_data.success = data->success;
    cb_data.results = data->results;

    data->callback (&cb_data, data->user_data);

    g_list_free_full (data->results, (GDestroyNotify)http_locked_files_res_free);

    g_free (data->host);
    g_free (data);
}
