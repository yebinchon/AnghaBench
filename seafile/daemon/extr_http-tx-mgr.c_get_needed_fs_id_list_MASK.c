#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_14__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_19__ {TYPE_5__* fs_mgr; int /*<<< orphan*/  branch_mgr; } ;
struct TYPE_18__ {int /*<<< orphan*/  obj_store; } ;
struct TYPE_17__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * curl; } ;
struct TYPE_16__ {int n_fs_objs; int /*<<< orphan*/  done_fs_objs; int /*<<< orphan*/  repo_version; int /*<<< orphan*/  repo_id; scalar_t__ is_clone; int /*<<< orphan*/  host; int /*<<< orphan*/  error; int /*<<< orphan*/  token; int /*<<< orphan*/  head; scalar_t__ use_fileserver_port; } ;
struct TYPE_15__ {int /*<<< orphan*/  commit_id; } ;
typedef  TYPE_2__ SeafBranch ;
typedef  TYPE_3__ HttpTxTask ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_4__ Connection ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_SERVER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_8__* seaf ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24 (HttpTxTask *task, Connection *conn, GList **fs_id_list)
{
    SeafBranch *master;
    CURL *curl;
    char *url = NULL;
    int status;
    char *rsp_content = NULL;
    gint64 rsp_size;
    int ret = 0;
    json_t *array;
    json_error_t jerror;
    const char *obj_id;

    const char *url_prefix = (task->use_fileserver_port) ? "" : "seafhttp/";

    if (!task->is_clone) {
        master = FUNC17 (seaf->branch_mgr,
                                                 task->repo_id,
                                                 "master");
        if (!master) {
            FUNC22 ("Failed to get branch master for repo %.8s.\n",
                          task->repo_id);
            return -1;
        }

        url = FUNC8 ("%s/%srepo/%s/fs-id-list/"
                               "?server-head=%s&client-head=%s",
                               task->host, url_prefix, task->repo_id,
                               task->head, master->commit_id);

        FUNC18 (master);
    } else {
        url = FUNC8 ("%s/%srepo/%s/fs-id-list/?server-head=%s",
                               task->host, url_prefix, task->repo_id, task->head);
    }

    curl = conn->curl;

    int curl_error;
    if (FUNC11 (curl, url, task->token, &status,
                  &rsp_content, &rsp_size,
                  NULL, NULL, (!task->is_clone), &curl_error) < 0) {
        conn->release = TRUE;
        FUNC9 (task, curl_error);
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        FUNC22 ("Bad response code for GET %s: %d.\n", url, status);
        FUNC10 (task, status);
        ret = -1;
        goto out;
    }

    array = FUNC15 (rsp_content, rsp_size, 0, &jerror);
    if (!array) {
        FUNC22 ("Invalid JSON response from the server: %s.\n", jerror.text);
        task->error = SYNC_ERROR_ID_SERVER;
        ret = -1;
        goto out;
    }

    int i;
    size_t n = FUNC13 (array);
    json_t *str;

    FUNC19 ("Received fs object list size %lu from %s:%s.\n",
                n, task->host, task->repo_id);

    task->n_fs_objs = (int)n;

    GHashTable *checked_objs = FUNC4 (g_str_hash, g_str_equal,
                                                      g_free, NULL);

    for (i = 0; i < n; ++i) {
        str = FUNC12 (array, i);
        if (!str) {
            FUNC22 ("Invalid JSON response from the server.\n");
            FUNC14 (array);
            FUNC23 (*fs_id_list);
            ret = -1;
            goto out;
        }

        obj_id = FUNC16(str);

        if (FUNC3 (checked_objs, obj_id)) {
            ++(task->done_fs_objs);
            continue;
        }
        char *key = FUNC7(obj_id);
        FUNC5 (checked_objs, key, key);

        if (!FUNC21 (seaf->fs_mgr->obj_store,
                                        task->repo_id, task->repo_version,
                                        obj_id)) {
            *fs_id_list = FUNC6 (*fs_id_list, FUNC7(obj_id));
        } else if (task->is_clone) {
            gboolean io_error = FALSE;
            gboolean sound;
            sound = FUNC20 (seaf->fs_mgr,
                                                   task->repo_id, task->repo_version,
                                                   obj_id, FALSE, &io_error);
            if (!sound && !io_error) {
                *fs_id_list = FUNC6 (*fs_id_list, FUNC7(obj_id));
            } else {
                ++(task->done_fs_objs);
            }
        } else {
            ++(task->done_fs_objs);
        }
    }

    FUNC14 (array);
    FUNC2 (checked_objs);

out:
    FUNC1 (url);
    FUNC1 (rsp_content);
    FUNC0 (curl);

    return ret;
}