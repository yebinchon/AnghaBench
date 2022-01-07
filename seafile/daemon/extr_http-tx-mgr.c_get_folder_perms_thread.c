
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_15__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_14__ {void* release; int * curl; } ;
struct TYPE_13__ {scalar_t__ data; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_3__* requests; void* success; int host; int use_fileserver_port; } ;
struct TYPE_11__ {int * priv; } ;
typedef int HttpTxPriv ;
typedef int HttpFolderPermReq ;
typedef TYPE_2__ GetFolderPermsData ;
typedef TYPE_3__ GList ;
typedef int ConnectionPool ;
typedef TYPE_4__ Connection ;
typedef int CURL ;


 int HTTP_OK ;
 void* TRUE ;
 char* compose_get_folder_perms_request (TYPE_3__*) ;
 TYPE_4__* connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,TYPE_4__*) ;
 int * find_connection_pool (int *,int ) ;
 int g_free (char*) ;
 int g_list_free (TYPE_3__*) ;
 char* g_strdup_printf (char*,int ) ;
 int http_folder_perm_req_free (int *) ;
 scalar_t__ http_post (int *,char*,int *,char*,int ,int*,char**,int *,void*,int *) ;
 scalar_t__ parse_folder_perms (char*,int ,TYPE_2__*) ;
 TYPE_5__* seaf ;
 int seaf_warning (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void *
get_folder_perms_thread (void *vdata)
{
    GetFolderPermsData *data = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = ((void*)0);
    int status;
    char *rsp_content = ((void*)0);
    gint64 rsp_size;
    GList *ptr;

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
        url = g_strdup_printf ("%s/seafhttp/repo/folder-perm", data->host);
    else
        url = g_strdup_printf ("%s/repo/folder-perm", data->host);

    req_content = compose_get_folder_perms_request (data->requests);
    if (!req_content)
        goto out;

    if (http_post (curl, url, ((void*)0), req_content, strlen(req_content),
                   &status, &rsp_content, &rsp_size, TRUE, ((void*)0)) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status == HTTP_OK) {
        if (parse_folder_perms (rsp_content, rsp_size, data) < 0)
            goto out;
        data->success = TRUE;
    } else {
        seaf_warning ("Bad response code for GET %s: %d.\n", url, status);
    }

out:
    for (ptr = data->requests; ptr; ptr = ptr->next)
        http_folder_perm_req_free ((HttpFolderPermReq *)ptr->data);
    g_list_free (data->requests);

    g_free (url);
    g_free (req_content);
    g_free (rsp_content);
    connection_pool_return_connection (pool, conn);
    return vdata;
}
