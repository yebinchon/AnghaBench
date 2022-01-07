
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
struct TYPE_10__ {void* release; int * curl; } ;
struct TYPE_9__ {int requests; void* success; int host; int use_fileserver_port; } ;
struct TYPE_8__ {int * priv; } ;
typedef int HttpTxPriv ;
typedef TYPE_2__ GetLockedFilesData ;
typedef int GDestroyNotify ;
typedef int ConnectionPool ;
typedef TYPE_3__ Connection ;
typedef int CURL ;


 int HTTP_OK ;
 void* TRUE ;
 char* compose_get_locked_files_request (int ) ;
 TYPE_3__* connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,TYPE_3__*) ;
 int * find_connection_pool (int *,int ) ;
 int g_free (char*) ;
 int g_list_free_full (int ,int ) ;
 char* g_strdup_printf (char*,int ) ;
 scalar_t__ http_locked_files_req_free ;
 scalar_t__ http_post (int *,char*,int *,char*,int ,int*,char**,int *,void*,int *) ;
 scalar_t__ parse_locked_files (char*,int ,TYPE_2__*) ;
 TYPE_4__* seaf ;
 int seaf_warning (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void *
get_locked_files_thread (void *vdata)
{
    GetLockedFilesData *data = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = ((void*)0);
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
        url = g_strdup_printf ("%s/seafhttp/repo/locked-files", data->host);
    else
        url = g_strdup_printf ("%s/repo/locked-files", data->host);

    req_content = compose_get_locked_files_request (data->requests);
    if (!req_content)
        goto out;

    if (http_post (curl, url, ((void*)0), req_content, strlen(req_content),
                   &status, &rsp_content, &rsp_size, TRUE, ((void*)0)) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status == HTTP_OK) {
        if (parse_locked_files (rsp_content, rsp_size, data) < 0)
            goto out;
        data->success = TRUE;
    } else {
        seaf_warning ("Bad response code for GET %s: %d.\n", url, status);
    }

out:
    g_list_free_full (data->requests, (GDestroyNotify)http_locked_files_req_free);

    g_free (url);
    g_free (req_content);
    g_free (rsp_content);
    connection_pool_return_connection (pool, conn);
    return vdata;
}
