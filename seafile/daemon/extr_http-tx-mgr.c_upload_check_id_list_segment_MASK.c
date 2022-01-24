#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_17__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_20__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_19__ {char* data; } ;
struct TYPE_18__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  host; int /*<<< orphan*/  error; int /*<<< orphan*/  token; } ;
typedef  TYPE_2__ HttpTxTask ;
typedef  TYPE_3__ GList ;
typedef  TYPE_4__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int HTTP_OK ; 
 int ID_LIST_SEGMENT_N ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_SERVER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int FUNC19 (char*) ; 

__attribute__((used)) static int
FUNC20 (HttpTxTask *task, Connection *conn, const char *url,
                              GList **send_id_list, GList **recv_id_list)
{
    json_t *array;
    json_error_t jerror;
    char *obj_id;
    int n_sent = 0;
    char *data = NULL;
    int len;
    CURL *curl;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;
    int ret = 0;

    /* Convert object id list to JSON format. */

    array = FUNC8 ();

    while (*send_id_list != NULL) {
        obj_id = (*send_id_list)->data;
        FUNC9 (array, FUNC15(obj_id));

        *send_id_list = FUNC2 (*send_id_list, *send_id_list);
        FUNC1 (obj_id);

        if (++n_sent >= ID_LIST_SEGMENT_N)
            break;
    }

    FUNC17 ("Check %d ids for %s:%s.\n",
                n_sent, task->host, task->repo_id);

    data = FUNC13 (array, 0);
    len = FUNC19(data);
    FUNC12 (array);

    /* Send fs object id list. */

    curl = conn->curl;

    int curl_error;
    if (FUNC7 (curl, url, task->token,
                   data, len,
                   &status, &rsp_content, &rsp_size, TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        FUNC5 (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC18 ("Bad response code for POST %s: %d.\n", url, status);
        FUNC6 (task, status);
        ret = -1;
        goto out;
    }

    /* Process needed object id list. */

    array = FUNC14 (rsp_content, rsp_size, 0, &jerror);
    if (!array) {
        FUNC18 ("Invalid JSON response from the server: %s.\n", jerror.text);
        task->error = SYNC_ERROR_ID_SERVER;
        ret = -1;
        goto out;
    }

    int i;
    size_t n = FUNC11 (array);
    json_t *str;

    FUNC17 ("%lu objects or blocks are needed for %s:%s.\n",
                n, task->host, task->repo_id);

    for (i = 0; i < n; ++i) {
        str = FUNC10 (array, i);
        if (!str) {
            FUNC18 ("Invalid JSON response from the server.\n");
            FUNC12 (array);
            ret = -1;
            goto out;
        }

        *recv_id_list = FUNC3 (*recv_id_list, FUNC4(FUNC16(str)));
    }

    FUNC12 (array);

out:
    FUNC0 (curl);
    FUNC1 (data);
    FUNC1 (rsp_content);

    return ret;
}