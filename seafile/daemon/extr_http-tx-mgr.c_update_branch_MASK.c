#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_9__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_8__ {int /*<<< orphan*/  token; int /*<<< orphan*/  head; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  host; int /*<<< orphan*/  use_fileserver_port; } ;
typedef  TYPE_1__ HttpTxTask ;
typedef  TYPE_2__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int HTTP_FORBIDDEN ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gchar ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC10 (HttpTxTask *task, Connection *conn)
{
    CURL *curl;
    char *url;
    int status;
    char *rsp_content;
    char *rsp_content_str = NULL;
    gint64 rsp_size;
    int ret = 0;

    curl = conn->curl;

    if (!task->use_fileserver_port)
        url = FUNC3 ("%s/seafhttp/repo/%s/commit/HEAD/?head=%s",
                               task->host, task->repo_id, task->head);
    else
        url = FUNC3 ("%s/repo/%s/commit/HEAD/?head=%s",
                               task->host, task->repo_id, task->head);

    int curl_error;
    if (FUNC6 (curl, url, task->token,
                  NULL, 0,
                  NULL, NULL,
                  &status, &rsp_content, &rsp_size, TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        FUNC4 (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC9 ("Bad response code for PUT %s: %d.\n", url, status);
        FUNC5 (task, status);

        if (status == HTTP_FORBIDDEN) {
            rsp_content_str = FUNC2 (gchar, rsp_size + 1);
            FUNC7 (rsp_content_str, rsp_content, rsp_size);
            FUNC9 ("%s\n", rsp_content_str);
            FUNC8 (task, rsp_content_str);
            FUNC1 (rsp_content_str);
        }

        ret = -1;
    }

out:
    FUNC1 (url);
    FUNC1 (rsp_content);
    FUNC0 (curl);

    return ret;
}