#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  char* gpointer ;
typedef  int gint64 ;
struct TYPE_22__ {TYPE_1__* fs_mgr; } ;
struct TYPE_21__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_20__ {char* data; } ;
struct TYPE_19__ {int repo_id; int /*<<< orphan*/  host; int /*<<< orphan*/  done_fs_objs; int /*<<< orphan*/  error; int /*<<< orphan*/  repo_version; int /*<<< orphan*/  token; int /*<<< orphan*/  use_fileserver_port; } ;
struct TYPE_18__ {int /*<<< orphan*/  object; int /*<<< orphan*/  obj_size; int /*<<< orphan*/  obj_id; } ;
struct TYPE_17__ {int /*<<< orphan*/  obj_store; } ;
typedef  TYPE_2__ ObjectHeader ;
typedef  TYPE_3__ HttpTxTask ;
typedef  TYPE_4__ GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_5__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int GET_FS_OBJECT_N ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_SERVER ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_WRITE_LOCAL_DATA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_4__* FUNC8 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int*,char**,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int FUNC25 (char*) ; 

__attribute__((used)) static int
FUNC26 (HttpTxTask *task, Connection *conn, GList **fs_list)
{
    json_t *array;
    char *obj_id;
    int n_sent = 0;
    char *data = NULL;
    int len;
    CURL *curl;
    char *url = NULL;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;
    int ret = 0;
    GHashTable *requested;

    /* Convert object id list to JSON format. */

    requested = FUNC5 (g_str_hash, g_str_equal, g_free, NULL);

    array = FUNC15 ();

    while (*fs_list != NULL) {
        obj_id = (*fs_list)->data;
        FUNC16 (array, FUNC19(obj_id));

        *fs_list = FUNC8 (*fs_list, *fs_list);

        FUNC7 (requested, obj_id, obj_id);

        if (++n_sent >= GET_FS_OBJECT_N)
            break;
    }

    FUNC22 ("Requesting %d fs objects from %s:%s.\n",
                n_sent, task->host, task->repo_id);

    data = FUNC18 (array, 0);
    len = FUNC25(data);
    FUNC17 (array);

    /* Send fs object id list. */

    curl = conn->curl;

    if (!task->use_fileserver_port)
        url = FUNC11 ("%s/seafhttp/repo/%s/pack-fs/", task->host, task->repo_id);
    else
        url = FUNC11 ("%s/repo/%s/pack-fs/", task->host, task->repo_id);

    int curl_error;
    if (FUNC14 (curl, url, task->token,
                   data, len,
                   &status, &rsp_content, &rsp_size, TRUE, &curl_error) < 0) {
        conn->release = TRUE;
        FUNC12 (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC24 ("Bad response code for POST %s: %d.\n", url, status);
        FUNC13 (task, status);
        ret = -1;
        goto out;
    }

    /* Save received fs objects. */

    int n_recv = 0;
    char *p = rsp_content;
    ObjectHeader *hdr = (ObjectHeader *)p;
    char recv_obj_id[41];
    int n = 0;
    int size;
    int rc;
    while (n < rsp_size) {
        FUNC20 (recv_obj_id, hdr->obj_id, 40);
        recv_obj_id[40] = 0;
        size = FUNC21 (hdr->obj_size);
        if (n + sizeof(ObjectHeader) + size > rsp_size) {
            FUNC24 ("Incomplete object package received for repo %.8s.\n",
                          task->repo_id);
            task->error = SYNC_ERROR_ID_SERVER;
            ret = -1;
            goto out;
        }

        ++n_recv;

        rc = FUNC23 (seaf->fs_mgr->obj_store,
                                       task->repo_id, task->repo_version,
                                       recv_obj_id,
                                       hdr->object,
                                       size, FALSE);
        if (rc < 0) {
            FUNC24 ("Failed to write fs object %s in repo %.8s.\n",
                          recv_obj_id, task->repo_id);
            task->error = SYNC_ERROR_ID_WRITE_LOCAL_DATA;
            ret = -1;
            goto out;
        }

        FUNC6 (requested, recv_obj_id);

        ++(task->done_fs_objs);

        p += (sizeof(ObjectHeader) + size);
        n += (sizeof(ObjectHeader) + size);
        hdr = (ObjectHeader *)p;
    }

    FUNC22 ("Received %d fs objects from %s:%s.\n",
                n_recv, task->host, task->repo_id);

    /* The server may not return all the objects we requested.
     * So we need to add back the remaining object ids into fs_list.
     */
    GHashTableIter iter;
    gpointer key, value;
    FUNC3 (&iter, requested);
    while (FUNC4 (&iter, &key, &value)) {
        obj_id = key;
        *fs_list = FUNC9 (*fs_list, FUNC10(obj_id));
    }
    FUNC2 (requested);

out:
    FUNC1 (url);
    FUNC1 (data);
    FUNC1 (rsp_content);
    FUNC0 (curl);

    return ret;
}