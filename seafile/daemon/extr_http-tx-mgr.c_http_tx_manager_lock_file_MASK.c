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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * priv; } ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  HttpTxManager ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  TYPE_2__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*,char const*,char*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 

int
FUNC8 (HttpTxManager *manager,
                           const char *host,
                           gboolean use_fileserver_port,
                           const char *token,
                           const char *repo_id,
                           const char *path)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    int status;
    int ret = 0;

    pool = FUNC2 (priv, host);
    if (!pool) {
        FUNC7 ("Failed to create connection pool for host %s.\n", host);
        return -1;
    }

    conn = FUNC0 (pool);
    if (!conn) {
        FUNC7 ("Failed to get connection to host %s.\n", host);
        return -1;
    }

    curl = conn->curl;

    char *esc_path = FUNC5(path, NULL, FALSE);
    if (!use_fileserver_port)
        url = FUNC4 ("%s/seafhttp/repo/%s/lock-file?p=%s", host, repo_id, esc_path);
    else
        url = FUNC4 ("%s/repo/%s/lock-file?p=%s", host, repo_id, esc_path);
    FUNC3 (esc_path);

    if (FUNC6 (curl, url, token, NULL, 0, NULL, NULL,
                  &status, NULL, NULL, TRUE, NULL) < 0) {
        conn->release = TRUE;
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC7 ("Bad response code for PUT %s: %d.\n", url, status);
        ret = -1;
    }

out:
    FUNC3 (url);
    FUNC1 (pool, conn);
    return ret;
}