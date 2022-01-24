#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_12__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_14__ {int enc_version; char* random_key; int repo_version; char* repo_salt; char const* repo_id; scalar_t__ server_url; int /*<<< orphan*/  is_readonly; int /*<<< orphan*/  sync_wt_name; TYPE_2__* manager; } ;
struct TYPE_13__ {int /*<<< orphan*/  tasks; } ;
typedef  TYPE_2__ SeafCloneManager ;
typedef  int /*<<< orphan*/  GError ;
typedef  TYPE_3__ CloneTask ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char const* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static char *
FUNC13 (SeafCloneManager *mgr, 
                 const char *repo_id,
                 int repo_version,
                 const char *peer_id,
                 const char *repo_name,
                 const char *token,
                 const char *passwd,
                 int enc_version,
                 const char *random_key,
                 const char *worktree,
                 const char *peer_addr,
                 const char *peer_port,
                 const char *email,
                 const char *more_info,
                 gboolean sync_wt_name,
                 GError **error)
{
    CloneTask *task;

    task = FUNC3 (repo_id, peer_id, repo_name,
                           token, worktree, passwd,
                           peer_addr, peer_port, email);
    task->manager = mgr;
    task->enc_version = enc_version;
    task->random_key = FUNC5 (random_key);
    task->repo_version = repo_version;
    task->sync_wt_name = sync_wt_name;
    if (more_info) {
        json_error_t jerror;
        json_t *object = NULL;

        object = FUNC8 (more_info, 0, &jerror);
        if (!object) {
            FUNC12 ("Failed to load more sync info from json: %s.\n", jerror.text);
            FUNC2 (task);
            return NULL;
        }
        
        json_t *integer = FUNC9 (object, "is_readonly");
        task->is_readonly = FUNC7 (integer);
        json_t *string = FUNC9 (object, "server_url");
        if (string)
            task->server_url = FUNC0 (FUNC10 (string));
        json_t *repo_salt = FUNC9 (object, "repo_salt");
        if (repo_salt)
            task->repo_salt = FUNC5 (FUNC10 (repo_salt));
        FUNC6 (object);
    }

    if (FUNC11 (mgr, task) < 0) {
        FUNC12 ("[Clone mgr] failed to save task.\n");
        FUNC2 (task);
        return NULL;
    }

    if (task->repo_version > 0) {
        if (task->server_url) {
            FUNC1 (task);
        } else {
            FUNC2 (task);
            return NULL;
        }
    } 

    /* The old task for this repo will be freed. */
    FUNC4 (mgr->tasks, FUNC5(task->repo_id), task);

    return FUNC5(repo_id);
}