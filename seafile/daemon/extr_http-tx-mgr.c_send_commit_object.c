
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* commit_mgr; } ;
struct TYPE_11__ {int release; int * curl; } ;
struct TYPE_10__ {int token; int head; int repo_id; int host; int use_fileserver_port; int error; int repo_version; } ;
struct TYPE_9__ {int obj_store; } ;
typedef TYPE_2__ HttpTxTask ;
typedef TYPE_3__ Connection ;
typedef int CURL ;


 int HTTP_OK ;
 int SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ;
 int TRUE ;
 int curl_easy_reset (int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ,int ,int ) ;
 int handle_curl_errors (TYPE_2__*,int) ;
 int handle_http_errors (TYPE_2__*,int) ;
 scalar_t__ http_put (int *,char*,int ,char*,int,int *,int *,int*,int *,int *,int ,int*) ;
 TYPE_6__* seaf ;
 scalar_t__ seaf_obj_store_read_obj (int ,int ,int ,int ,void**,int*) ;
 int seaf_warning (char*,char*,...) ;

__attribute__((used)) static int
send_commit_object (HttpTxTask *task, Connection *conn)
{
    CURL *curl;
    char *url;
    int status;
    char *data;
    int len;
    int ret = 0;

    if (seaf_obj_store_read_obj (seaf->commit_mgr->obj_store,
                                 task->repo_id, task->repo_version,
                                 task->head, (void**)&data, &len) < 0) {
        seaf_warning ("Failed to read commit %s.\n", task->head);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        return -1;
    }

    curl = conn->curl;

    if (!task->use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/%s/commit/%s",
                               task->host, task->repo_id, task->head);
    else
        url = g_strdup_printf ("%s/repo/%s/commit/%s",
                               task->host, task->repo_id, task->head);

    int curl_error;
    if (http_put (curl, url, task->token,
                  data, len,
                  ((void*)0), ((void*)0),
                  &status, ((void*)0), ((void*)0), TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        handle_curl_errors (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        seaf_warning ("Bad response code for PUT %s: %d.\n", url, status);
        handle_http_errors (task, status);
        ret = -1;
    }

out:
    g_free (url);
    curl_easy_reset (curl);
    g_free (data);

    return ret;
}
