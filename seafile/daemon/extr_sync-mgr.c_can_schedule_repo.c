
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_6__ {scalar_t__ last_sync_time; } ;
struct TYPE_5__ {int sync_interval; scalar_t__ n_running_tasks; } ;
typedef TYPE_1__ SeafSyncManager ;
typedef TYPE_2__ SeafRepo ;


 scalar_t__ MAX_RUNNING_SYNC_TASKS ;
 scalar_t__ time (int *) ;

__attribute__((used)) static gboolean
can_schedule_repo (SeafSyncManager *manager, SeafRepo *repo)
{
    int now = (int)time(((void*)0));

    return ((repo->last_sync_time == 0 ||
             repo->last_sync_time < now - manager->sync_interval) &&
            manager->n_running_tasks < MAX_RUNNING_SYNC_TASKS);
}
