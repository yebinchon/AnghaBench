
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int http_tx_mgr; } ;
typedef int HttpTxTask ;
typedef int GObject ;
typedef int GError ;


 scalar_t__ convert_http_task (int *) ;
 int * http_tx_manager_find_task (int ,char const*) ;
 TYPE_1__* seaf ;

GObject *
seafile_find_transfer_task (const char *repo_id, GError *error)
{
    HttpTxTask *http_task;

    http_task = http_tx_manager_find_task (seaf->http_tx_mgr, repo_id);
    if (http_task)
        return (GObject *)convert_http_task (http_task);

    return ((void*)0);
}
