
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int json_t ;
typedef char* gpointer ;
typedef int gint64 ;
struct TYPE_22__ {TYPE_1__* fs_mgr; } ;
struct TYPE_21__ {int release; int * curl; } ;
struct TYPE_20__ {char* data; } ;
struct TYPE_19__ {int repo_id; int host; int done_fs_objs; int error; int repo_version; int token; int use_fileserver_port; } ;
struct TYPE_18__ {int object; int obj_size; int obj_id; } ;
struct TYPE_17__ {int obj_store; } ;
typedef TYPE_2__ ObjectHeader ;
typedef TYPE_3__ HttpTxTask ;
typedef TYPE_4__ GList ;
typedef int GHashTableIter ;
typedef int GHashTable ;
typedef TYPE_5__ Connection ;
typedef int CURL ;


 int FALSE ;
 int GET_FS_OBJECT_N ;
 int HTTP_OK ;
 int SYNC_ERROR_ID_SERVER ;
 int SYNC_ERROR_ID_WRITE_LOCAL_DATA ;
 int TRUE ;
 int curl_easy_reset (int *) ;
 int g_free (char*) ;
 int g_hash_table_destroy (int *) ;
 int g_hash_table_iter_init (int *,int *) ;
 scalar_t__ g_hash_table_iter_next (int *,char**,char**) ;
 int * g_hash_table_new_full (int ,int ,int (*) (char*),int *) ;
 int g_hash_table_remove (int *,char*) ;
 int g_hash_table_replace (int *,char*,char*) ;
 TYPE_4__* g_list_delete_link (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* g_list_prepend (TYPE_4__*,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 int g_strdup (char*) ;
 char* g_strdup_printf (char*,int ,int) ;
 int handle_curl_errors (TYPE_3__*,int) ;
 int handle_http_errors (TYPE_3__*,int) ;
 scalar_t__ http_post (int *,char*,int ,char*,int,int*,char**,int*,int ,int*) ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_string (char*) ;
 int memcpy (char*,int ,int) ;
 int ntohl (int ) ;
 TYPE_6__* seaf ;
 int seaf_debug (char*,int,int ,int) ;
 int seaf_obj_store_write_obj (int ,int,int ,char*,int ,int,int ) ;
 int seaf_warning (char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int
get_fs_objects (HttpTxTask *task, Connection *conn, GList **fs_list)
{
    json_t *array;
    char *obj_id;
    int n_sent = 0;
    char *data = ((void*)0);
    int len;
    CURL *curl;
    char *url = ((void*)0);
    int status;
    char *rsp_content = ((void*)0);
    gint64 rsp_size;
    int ret = 0;
    GHashTable *requested;



    requested = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));

    array = json_array ();

    while (*fs_list != ((void*)0)) {
        obj_id = (*fs_list)->data;
        json_array_append_new (array, json_string(obj_id));

        *fs_list = g_list_delete_link (*fs_list, *fs_list);

        g_hash_table_replace (requested, obj_id, obj_id);

        if (++n_sent >= GET_FS_OBJECT_N)
            break;
    }

    seaf_debug ("Requesting %d fs objects from %s:%s.\n",
                n_sent, task->host, task->repo_id);

    data = json_dumps (array, 0);
    len = strlen(data);
    json_decref (array);



    curl = conn->curl;

    if (!task->use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/%s/pack-fs/", task->host, task->repo_id);
    else
        url = g_strdup_printf ("%s/repo/%s/pack-fs/", task->host, task->repo_id);

    int curl_error;
    if (http_post (curl, url, task->token,
                   data, len,
                   &status, &rsp_content, &rsp_size, TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        handle_curl_errors (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        seaf_warning ("Bad response code for POST %s: %d.\n", url, status);
        handle_http_errors (task, status);
        ret = -1;
        goto out;
    }



    int n_recv = 0;
    char *p = rsp_content;
    ObjectHeader *hdr = (ObjectHeader *)p;
    char recv_obj_id[41];
    int n = 0;
    int size;
    int rc;
    while (n < rsp_size) {
        memcpy (recv_obj_id, hdr->obj_id, 40);
        recv_obj_id[40] = 0;
        size = ntohl (hdr->obj_size);
        if (n + sizeof(ObjectHeader) + size > rsp_size) {
            seaf_warning ("Incomplete object package received for repo %.8s.\n",
                          task->repo_id);
            task->error = SYNC_ERROR_ID_SERVER;
            ret = -1;
            goto out;
        }

        ++n_recv;

        rc = seaf_obj_store_write_obj (seaf->fs_mgr->obj_store,
                                       task->repo_id, task->repo_version,
                                       recv_obj_id,
                                       hdr->object,
                                       size, FALSE);
        if (rc < 0) {
            seaf_warning ("Failed to write fs object %s in repo %.8s.\n",
                          recv_obj_id, task->repo_id);
            task->error = SYNC_ERROR_ID_WRITE_LOCAL_DATA;
            ret = -1;
            goto out;
        }

        g_hash_table_remove (requested, recv_obj_id);

        ++(task->done_fs_objs);

        p += (sizeof(ObjectHeader) + size);
        n += (sizeof(ObjectHeader) + size);
        hdr = (ObjectHeader *)p;
    }

    seaf_debug ("Received %d fs objects from %s:%s.\n",
                n_recv, task->host, task->repo_id);




    GHashTableIter iter;
    gpointer key, value;
    g_hash_table_iter_init (&iter, requested);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        obj_id = key;
        *fs_list = g_list_prepend (*fs_list, g_strdup(obj_id));
    }
    g_hash_table_destroy (requested);

out:
    g_free (url);
    g_free (data);
    g_free (rsp_content);
    curl_easy_reset (curl);

    return ret;
}
