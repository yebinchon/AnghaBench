
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct TYPE_17__ {int sec; } ;
struct cache_entry {int ce_flags; scalar_t__ ce_size; int ce_mode; scalar_t__ modifier; int sha1; TYPE_1__ ce_mtime; } ;
typedef scalar_t__ gint64 ;
typedef int data ;
struct TYPE_23__ {int sync_mgr; } ;
struct TYPE_22__ {scalar_t__ status; char const* sha1; scalar_t__ size; int name; int mode; int modifier; int mtime; } ;
struct TYPE_21__ {int repo_version; int * finished_tasks; int conflict_head_id; TYPE_2__* http_task; int * crypt; int repo_id; } ;
struct TYPE_20__ {int result; struct cache_entry* ce; scalar_t__ new_ce; TYPE_6__* de; } ;
struct TYPE_19__ {TYPE_6__* data; struct TYPE_19__* next; } ;
struct TYPE_18__ {int is_clone; int all_stop; int repo_name; } ;
typedef int SyncStatus ;
typedef int SeafileCrypt ;
typedef int LockedFileSet ;
typedef TYPE_2__ HttpTxTask ;
typedef int GThreadPool ;
typedef TYPE_3__ GList ;
typedef int GHashTable ;
typedef int GDestroyNotify ;
typedef int GAsyncQueue ;
typedef TYPE_4__ FileTxTask ;
typedef TYPE_5__ FileTxData ;
typedef TYPE_6__ DiffEntry ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_REMOVE ;
 int DEFAULT_DOWNLOAD_THREADS ;
 scalar_t__ DIFF_STATUS_ADDED ;
 scalar_t__ DIFF_STATUS_DIR_ADDED ;
 scalar_t__ DIFF_STATUS_MODIFIED ;
 int FALSE ;
 int FETCH_CHECKOUT_CANCELED ;
 int FETCH_CHECKOUT_FAILED ;
 int FETCH_CHECKOUT_SUCCESS ;
 int FETCH_CHECKOUT_TRANSFER_ERROR ;
 int SYNC_STATUS_ERROR ;
 int SYNC_STATUS_SYNCED ;
 int TRUE ;
 scalar_t__ UPDATE_CACHE_SIZE_LIMIT ;
 int add_index_entry (struct index_state*,struct cache_entry*,int) ;
 int cache_entry_free (struct cache_entry*) ;
 int checkout_file_http (TYPE_5__*,TYPE_4__*,char const*,int *,int *,char const*,int *) ;
 int create_ce_mode (int ) ;
 int fetch_file_thread_func ;
 scalar_t__ file_tx_task_free ;
 int * g_async_queue_new () ;
 TYPE_4__* g_async_queue_pop (int *) ;
 int g_async_queue_unref (int *) ;
 int g_free (scalar_t__) ;
 int g_hash_table_destroy (int *) ;
 int * g_hash_table_new_full (int ,int ,int (*) (scalar_t__),int ) ;
 int g_hash_table_remove (int *,int ) ;
 scalar_t__ g_hash_table_size (int *) ;
 int g_str_equal ;
 int g_str_hash ;
 scalar_t__ g_strdup (int ) ;
 int g_thread_pool_free (int *,int ,int ) ;
 int * g_thread_pool_new (int ,TYPE_5__*,int ,int ,int *) ;
 int handle_dir_added_de (char const*,int ,char const*,struct index_state*,TYPE_6__*,int *,int *) ;
 int memcpy (int ,char const*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int rawdata_to_hex (char const*,char*,int) ;
 int schedule_file_fetch (int *,char const*,int ,char const*,struct index_state*,TYPE_6__*,int *,int *,int *) ;
 TYPE_7__* seaf ;
 int seaf_sync_manager_update_active_path (int ,char const*,int ,int ,int ) ;
 int update_index (struct index_state*,char const*) ;

__attribute__((used)) static int
download_files_http (const char *repo_id,
                     int repo_version,
                     const char *worktree,
                     struct index_state *istate,
                     const char *index_path,
                     SeafileCrypt *crypt,
                     HttpTxTask *http_task,
                     GList *results,
                     GHashTable *conflict_hash,
                     GHashTable *no_conflict_hash,
                     const char *conflict_head_id,
                     LockedFileSet *fset)
{
    struct cache_entry *ce;
    DiffEntry *de;
    gint64 checkout_size = 0;
    GThreadPool *tpool;
    GAsyncQueue *finished_tasks;
    GHashTable *pending_tasks;
    GList *ptr;
    FileTxTask *task;
    int ret = FETCH_CHECKOUT_SUCCESS;

    finished_tasks = g_async_queue_new ();

    FileTxData data;
    memset (&data, 0, sizeof(data));
    memcpy (data.repo_id, repo_id, 36);
    data.repo_version = repo_version;
    data.crypt = crypt;
    data.http_task = http_task;
    memcpy (data.conflict_head_id, conflict_head_id, 40);
    data.finished_tasks = finished_tasks;

    tpool = g_thread_pool_new (fetch_file_thread_func, &data,
                               DEFAULT_DOWNLOAD_THREADS, FALSE, ((void*)0));

    pending_tasks = g_hash_table_new_full (g_str_hash, g_str_equal,
                                           g_free, (GDestroyNotify)file_tx_task_free);

    for (ptr = results; ptr != ((void*)0); ptr = ptr->next) {
        de = ptr->data;

        if (de->status == DIFF_STATUS_DIR_ADDED) {
            handle_dir_added_de (repo_id, http_task->repo_name, worktree, istate, de,
                                 conflict_hash, no_conflict_hash);
        } else if (de->status == DIFF_STATUS_ADDED ||
                   de->status == DIFF_STATUS_MODIFIED) {
            if (FETCH_CHECKOUT_FAILED == schedule_file_fetch (tpool,
                                                              repo_id,
                                                              http_task->repo_name,
                                                              worktree,
                                                              istate,
                                                              de,
                                                              pending_tasks,
                                                              conflict_hash,
                                                              no_conflict_hash))
                continue;
        }
    }


    if (g_hash_table_size(pending_tasks) == 0) {
        if (results != ((void*)0))
            update_index (istate, index_path);
        goto out;
    }

    char file_id[41];
    while ((task = g_async_queue_pop (finished_tasks)) != ((void*)0)) {
        ce = task->ce;
        de = task->de;

        rawdata_to_hex (de->sha1, file_id, 20);



        if (task->result == FETCH_CHECKOUT_CANCELED ||
            task->result == FETCH_CHECKOUT_TRANSFER_ERROR) {
            ret = task->result;
            if (task->new_ce)
                cache_entry_free (task->ce);
            http_task->all_stop = TRUE;
            goto out;
        }

        int rc = checkout_file_http (&data, task, worktree,
                                     conflict_hash, no_conflict_hash,
                                     conflict_head_id, fset);

        if (!http_task->is_clone) {
            SyncStatus status;
            if (rc == FETCH_CHECKOUT_FAILED)
                status = SYNC_STATUS_ERROR;
            else
                status = SYNC_STATUS_SYNCED;
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo_id,
                                                  de->name,
                                                  de->mode,
                                                  status);
        }

        if (task->new_ce) {
            if (!(ce->ce_flags & CE_REMOVE)) {
                add_index_entry (istate, task->ce,
                                 (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE));
            }
        } else {
            ce->ce_mtime.sec = de->mtime;
            ce->ce_size = de->size;
            memcpy (ce->sha1, de->sha1, 20);
            if (ce->modifier) g_free (ce->modifier);
            ce->modifier = g_strdup(de->modifier);
            ce->ce_mode = create_ce_mode (de->mode);
        }

        g_hash_table_remove (pending_tasks, de->name);

        if (g_hash_table_size (pending_tasks) == 0)
            break;





        checkout_size += ce->ce_size;
        if (checkout_size >= UPDATE_CACHE_SIZE_LIMIT) {
            update_index (istate, index_path);
            checkout_size = 0;
        }
    }

    update_index (istate, index_path);

out:



    g_thread_pool_free (tpool, TRUE, TRUE);


    g_hash_table_destroy (pending_tasks);

    g_async_queue_unref (finished_tasks);

    return ret;
}
