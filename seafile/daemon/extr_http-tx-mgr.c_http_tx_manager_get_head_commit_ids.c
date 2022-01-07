
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gint64 ;
typedef int gboolean ;
struct TYPE_8__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_7__ {int release; int * curl; } ;
struct TYPE_6__ {int * priv; } ;
typedef int HttpTxPriv ;
typedef int HttpTxManager ;
typedef int GList ;
typedef int GHashTable ;
typedef int ConnectionPool ;
typedef TYPE_2__ Connection ;
typedef int CURL ;


 int HTTP_OK ;
 int TRUE ;
 TYPE_2__* connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,TYPE_2__*) ;
 int * find_connection_pool (int *,char const*) ;
 int free (char*) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*) ;
 scalar_t__ http_post (int *,char*,int *,char*,int ,int*,char**,int *,int ,int *) ;
 int * repo_head_commit_map_from_json (char*,int ) ;
 char* repo_id_list_to_json (int *) ;
 TYPE_3__* seaf ;
 int seaf_warning (char*,char const*,...) ;
 int strlen (char*) ;

GHashTable *
http_tx_manager_get_head_commit_ids (HttpTxManager *manager,
                                     const char *host,
                                     gboolean use_fileserver_port,
                                     GList *repo_id_list)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = ((void*)0);
    gint64 req_size;
    int status;
    char *rsp_content = ((void*)0);
    gint64 rsp_size;
    GHashTable *map = ((void*)0);

    pool = find_connection_pool (priv, host);
    if (!pool) {
        seaf_warning ("Failed to create connection pool for host %s.\n", host);
        return ((void*)0);
    }

    conn = connection_pool_get_connection (pool);
    if (!conn) {
        seaf_warning ("Failed to get connection to host %s.\n", host);
        return ((void*)0);
    }

    curl = conn->curl;

    if (!use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/head-commits-multi/", host);
    else
        url = g_strdup_printf ("%s/repo/head-commits-multi/", host);

    req_content = repo_id_list_to_json (repo_id_list);
    req_size = strlen(req_content);

    if (http_post (curl, url, ((void*)0), req_content, req_size,
                   &status, &rsp_content, &rsp_size, TRUE, ((void*)0)) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status != HTTP_OK) {
        seaf_warning ("Bad response code for POST %s: %d\n", url, status);
        goto out;
    }

    map = repo_head_commit_map_from_json (rsp_content, rsp_size);

out:
    g_free (url);
    connection_pool_return_connection (pool, conn);

    free (req_content);
    g_free (rsp_content);
    return map;
}
