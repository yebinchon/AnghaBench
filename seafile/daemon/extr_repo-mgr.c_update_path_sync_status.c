
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct TYPE_3__ {int ap_q_lock; int active_paths; } ;
typedef TYPE_1__ WTStatus ;
typedef int SeafRepo ;
typedef int GList ;


 int g_free (char*) ;
 char* g_queue_pop_head (int ) ;
 int process_active_path (int *,char*,struct index_state*,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
update_path_sync_status (SeafRepo *repo, WTStatus *status,
                         struct index_state *istate, GList *ignore_list)
{
    char *path;

    while (1) {
        pthread_mutex_lock (&status->ap_q_lock);
        path = g_queue_pop_head (status->active_paths);
        pthread_mutex_unlock (&status->ap_q_lock);

        if (!path)
            break;




        process_active_path (repo, path, istate, ignore_list);


        g_free (path);
    }
}
