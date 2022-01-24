#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_15__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_14__ {void* release; int /*<<< orphan*/ * curl; } ;
struct TYPE_13__ {scalar_t__ data; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_3__* requests; void* success; int /*<<< orphan*/  host; int /*<<< orphan*/  use_fileserver_port; } ;
struct TYPE_11__ {int /*<<< orphan*/ * priv; } ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  HttpFolderPermReq ;
typedef  TYPE_2__ GetFolderPermsData ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  TYPE_4__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int HTTP_OK ; 
 void* TRUE ; 
 char* FUNC0 (TYPE_3__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,char**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void *
FUNC12 (void *vdata)
{
    GetFolderPermsData *data = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = NULL;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;
    GList *ptr;

    pool = FUNC3 (priv, data->host);
    if (!pool) {
        FUNC10 ("Failed to create connection pool for host %s.\n", data->host);
        return vdata;
    }

    conn = FUNC1 (pool);
    if (!conn) {
        FUNC10 ("Failed to get connection to host %s.\n", data->host);
        return vdata;
    }

    curl = conn->curl;

    if (!data->use_fileserver_port)
        url = FUNC6 ("%s/seafhttp/repo/folder-perm", data->host);
    else
        url = FUNC6 ("%s/repo/folder-perm", data->host);

    req_content = FUNC0 (data->requests);
    if (!req_content)
        goto out;

    if (FUNC8 (curl, url, NULL, req_content, FUNC11(req_content),
                   &status, &rsp_content, &rsp_size, TRUE, NULL) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status == HTTP_OK) {
        if (FUNC9 (rsp_content, rsp_size, data) < 0)
            goto out;
        data->success = TRUE;
    } else {
        FUNC10 ("Bad response code for GET %s: %d.\n", url, status);
    }

out:
    for (ptr = data->requests; ptr; ptr = ptr->next)
        FUNC7 ((HttpFolderPermReq *)ptr->data);
    FUNC5 (data->requests);

    FUNC4 (url);
    FUNC4 (req_content);
    FUNC4 (rsp_content);
    FUNC2 (pool, conn);
    return vdata;
}