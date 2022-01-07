
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef scalar_t__ gint64 ;
typedef void* gboolean ;
struct TYPE_13__ {int q_lock; int event_q; void* partial_commit; } ;
typedef TYPE_1__ WTStatus ;
struct TYPE_14__ {int * remain_files; int path; } ;
typedef TYPE_2__ WTEvent ;
struct TYPE_17__ {int sync_mgr; } ;
struct TYPE_16__ {int id; int create_partial_commit; } ;
struct TYPE_15__ {void* end_multipart_upload; scalar_t__ total_bytes; void* multipart_upload; } ;
typedef TYPE_3__ SyncInfo ;
typedef int SeafileCrypt ;
typedef TYPE_4__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GQueue ;
typedef int GList ;


 void* FALSE ;
 scalar_t__ MAX_COMMIT_SIZE ;
 void* TRUE ;
 int add_path_to_index (TYPE_4__*,struct index_state*,int *,int ,int *,int **,scalar_t__*,int **,int *) ;
 int add_remain_files (TYPE_4__*,struct index_state*,int *,int *,int *,scalar_t__*) ;
 int g_queue_free (int *) ;
 scalar_t__ g_queue_get_length (int *) ;
 int g_queue_push_head (int ,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_6__* seaf ;
 int seaf_message (char*,int ) ;
 TYPE_3__* seaf_sync_manager_get_sync_info (int ,int ) ;

__attribute__((used)) static gboolean
handle_add_files (SeafRepo *repo, struct index_state *istate,
                  SeafileCrypt *crypt, GList *ignore_list,
                  LockedFileSet *fset,
                  WTStatus *status, WTEvent *event,
                  GList **scanned_dirs, gint64 *total_size)
{
    SyncInfo *info;

    if (!repo->create_partial_commit) {




        add_path_to_index (repo, istate, crypt, event->path,
                           ignore_list, scanned_dirs,
                           total_size, ((void*)0), ((void*)0));
    } else if (!event->remain_files) {
        GQueue *remain_files = ((void*)0);
        add_path_to_index (repo, istate, crypt, event->path,
                           ignore_list, scanned_dirs,
                           total_size, &remain_files, fset);
        if (*total_size >= MAX_COMMIT_SIZE) {
            seaf_message ("Creating partial commit after adding %s.\n",
                          event->path);

            status->partial_commit = TRUE;







            if (remain_files) {
                if (g_queue_get_length (remain_files) == 0) {
                    g_queue_free (remain_files);
                    return TRUE;
                }

                seaf_message ("Remain files for %s.\n", event->path);


                event->remain_files = remain_files;

                pthread_mutex_lock (&status->q_lock);
                g_queue_push_head (status->event_q, event);
                pthread_mutex_unlock (&status->q_lock);

                info = seaf_sync_manager_get_sync_info (seaf->sync_mgr, repo->id);
                if (!info->multipart_upload) {
                    info->multipart_upload = TRUE;
                    info->total_bytes = *total_size;
                }
            }

            return TRUE;
        }
    } else {
        seaf_message ("Adding remaining files for %s.\n", event->path);

        add_remain_files (repo, istate, crypt, event->remain_files,
                          ignore_list, total_size);
        if (g_queue_get_length (event->remain_files) != 0) {
            pthread_mutex_lock (&status->q_lock);
            g_queue_push_head (status->event_q, event);
            pthread_mutex_unlock (&status->q_lock);
            return TRUE;
        } else {
            info = seaf_sync_manager_get_sync_info (seaf->sync_mgr, repo->id);
            info->end_multipart_upload = TRUE;
            return TRUE;
        }
        if (*total_size >= MAX_COMMIT_SIZE)
            return TRUE;
    }

    return FALSE;
}
