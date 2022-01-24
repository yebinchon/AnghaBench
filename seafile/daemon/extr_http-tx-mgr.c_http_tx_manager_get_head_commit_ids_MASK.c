#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * priv; } ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  HttpTxManager ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  TYPE_2__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int HTTP_OK ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

GHashTable *
FUNC11 (HttpTxManager *manager,
                                     const char *host,
                                     gboolean use_fileserver_port,
                                     GList *repo_id_list)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = NULL;
    gint64 req_size;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;
    GHashTable *map = NULL;

    pool = FUNC2 (priv, host);
    if (!pool) {
        FUNC9 ("Failed to create connection pool for host %s.\n", host);
        return NULL;
    }

    conn = FUNC0 (pool);
    if (!conn) {
        FUNC9 ("Failed to get connection to host %s.\n", host);
        return NULL;
    }

    curl = conn->curl;

    if (!use_fileserver_port)
        url = FUNC5 ("%s/seafhttp/repo/head-commits-multi/", host);
    else
        url = FUNC5 ("%s/repo/head-commits-multi/", host);

    req_content = FUNC8 (repo_id_list);
    req_size = FUNC10(req_content);

    if (FUNC6 (curl, url, NULL, req_content, req_size,
                   &status, &rsp_content, &rsp_size, TRUE, NULL) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC9 ("Bad response code for POST %s: %d\n", url, status);
        goto out;
    }

    map = FUNC7 (rsp_content, rsp_size);

out:
    FUNC4 (url);
    FUNC1 (pool, conn);
    /* returned by json_dumps(). */
    FUNC3 (req_content);
    FUNC4 (rsp_content);
    return map;
}