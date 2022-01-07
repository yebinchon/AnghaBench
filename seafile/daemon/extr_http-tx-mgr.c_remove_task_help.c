
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* gpointer ;
typedef int gboolean ;
struct TYPE_2__ {int repo_id; } ;
typedef TYPE_1__ HttpTxTask ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static gboolean
remove_task_help (gpointer key, gpointer value, gpointer user_data)
{
    HttpTxTask *task = value;
    const char *repo_id = user_data;

    if (strcmp(task->repo_id, repo_id) != 0)
        return FALSE;

    return TRUE;
}
