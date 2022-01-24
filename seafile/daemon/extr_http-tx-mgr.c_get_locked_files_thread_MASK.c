#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_11__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_10__ {void* release; int /*<<< orphan*/ * curl; } ;
struct TYPE_9__ {int /*<<< orphan*/  requests; void* success; int /*<<< orphan*/  host; int /*<<< orphan*/  use_fileserver_port; } ;
struct TYPE_8__ {int /*<<< orphan*/ * priv; } ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  TYPE_2__ GetLockedFilesData ;
typedef  int /*<<< orphan*/  GDestroyNotify ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  TYPE_3__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int HTTP_OK ; 
 void* TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ http_locked_files_req_free ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,char**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void *
FUNC11 (void *vdata)
{
    GetLockedFilesData *data = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    char *req_content = NULL;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;

    pool = FUNC3 (priv, data->host);
    if (!pool) {
        FUNC9 ("Failed to create connection pool for host %s.\n", data->host);
        return vdata;
    }

    conn = FUNC1 (pool);
    if (!conn) {
        FUNC9 ("Failed to get connection to host %s.\n", data->host);
        return vdata;
    }

    curl = conn->curl;

    if (!data->use_fileserver_port)
        url = FUNC6 ("%s/seafhttp/repo/locked-files", data->host);
    else
        url = FUNC6 ("%s/repo/locked-files", data->host);

    req_content = FUNC0 (data->requests);
    if (!req_content)
        goto out;

    if (FUNC7 (curl, url, NULL, req_content, FUNC10(req_content),
                   &status, &rsp_content, &rsp_size, TRUE, NULL) < 0) {
        conn->release = TRUE;
        goto out;
    }

    if (status == HTTP_OK) {
        if (FUNC8 (rsp_content, rsp_size, data) < 0)
            goto out;
        data->success = TRUE;
    } else {
        FUNC9 ("Bad response code for GET %s: %d.\n", url, status);
    }

out:
    FUNC5 (data->requests, (GDestroyNotify)http_locked_files_req_free);

    FUNC4 (url);
    FUNC4 (req_content);
    FUNC4 (rsp_content);
    FUNC2 (pool, conn);
    return vdata;
}