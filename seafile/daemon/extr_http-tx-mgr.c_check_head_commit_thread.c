
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_11__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_10__ {int error_code; void* success; void* is_deleted; int token; int repo_id; int host; int use_fileserver_port; } ;
struct TYPE_9__ {void* release; int * curl; } ;
struct TYPE_8__ {int * priv; } ;
typedef int HttpTxPriv ;
typedef int ConnectionPool ;
typedef TYPE_2__ Connection ;
typedef TYPE_3__ CheckHeadData ;
typedef int CURL ;


 int HTTP_OK ;
 int HTTP_REPO_DELETED ;
 void* TRUE ;
 TYPE_2__* connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,TYPE_2__*) ;
 int curl_error_to_http_task_error (int) ;
 int * find_connection_pool (int *,int ) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ,int ) ;
 int http_error_to_http_task_error (int) ;
 scalar_t__ http_get (int *,char*,int ,int*,char**,int *,int *,int *,void*,int*) ;
 scalar_t__ parse_head_commit_info (char*,int ,TYPE_3__*) ;
 TYPE_4__* seaf ;
 int seaf_warning (char*,char*,...) ;

__attribute__((used)) static void *
check_head_commit_thread (void *vdata)
{
    CheckHeadData *data = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    int status;
    char *rsp_content = ((void*)0);
    gint64 rsp_size;

    pool = find_connection_pool (priv, data->host);
    if (!pool) {
        seaf_warning ("Failed to create connection pool for host %s.\n", data->host);
        return vdata;
    }

    conn = connection_pool_get_connection (pool);
    if (!conn) {
        seaf_warning ("Failed to get connection to host %s.\n", data->host);
        return vdata;
    }

    curl = conn->curl;

    if (!data->use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/%s/commit/HEAD",
                               data->host, data->repo_id);
    else
        url = g_strdup_printf ("%s/repo/%s/commit/HEAD",
                               data->host, data->repo_id);

    int curl_error;
    if (http_get (curl, url, data->token, &status, &rsp_content, &rsp_size,
                  ((void*)0), ((void*)0), TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        data->error_code = curl_error_to_http_task_error (curl_error);
        goto out;
    }

    if (status == HTTP_OK) {
        if (parse_head_commit_info (rsp_content, rsp_size, data) < 0)
            goto out;
        data->success = TRUE;
    } else if (status == HTTP_REPO_DELETED) {
        data->is_deleted = TRUE;
        data->success = TRUE;
    } else {
        seaf_warning ("Bad response code for GET %s: %d.\n", url, status);
        data->error_code = http_error_to_http_task_error (status);
    }

out:
    g_free (url);
    g_free (rsp_content);
    connection_pool_return_connection (pool, conn);
    return vdata;
}
