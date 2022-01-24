#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_18__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_17__ {int enc_version; scalar_t__ repo_version; int /*<<< orphan*/  repo_id; scalar_t__ server_url; TYPE_2__* manager; } ;
struct TYPE_16__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_15__ {int /*<<< orphan*/ * head; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCloneManager ;
typedef  TYPE_3__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_STATE_DONE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_GENERAL_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_7__* seaf ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC12 (sqlite3_stmt *stmt, void *data)
{
    SeafCloneManager *mgr = data;
    const char *repo_id, *repo_name, *token, *peer_id, *worktree, *passwd;
    const char *peer_addr, *peer_port, *email;
    CloneTask *task;
    SeafRepo *repo;

    repo_id = (const char *)FUNC9 (stmt, 0);
    repo_name = (const char *)FUNC9 (stmt, 1);
    token = (const char *)FUNC9 (stmt, 2);
    peer_id = (const char *)FUNC9 (stmt, 3);
    worktree = (const char *)FUNC9 (stmt, 4);
    passwd = (const char *)FUNC9 (stmt, 5);
    peer_addr = (const char *)FUNC9 (stmt, 6);
    peer_port = (const char *)FUNC9 (stmt, 7);
    email = (const char *)FUNC9 (stmt, 8);

    task = FUNC2 (repo_id, peer_id, repo_name, 
                           token, worktree, passwd,
                           peer_addr, peer_port, email);
    task->manager = mgr;
    /* Default to 1. */
    task->enc_version = 1;

    if (passwd && FUNC5 (task) < 0) {
        FUNC1 (task);
        return TRUE;
    }

    task->repo_version = 0;
    FUNC7 (task);

    FUNC6 (task);

    repo = FUNC8 (seaf->repo_mgr, repo_id);

    if (repo != NULL && repo->head != NULL) {
        FUNC10 (task, CLONE_STATE_DONE);
        return TRUE;
    }

    if (task->repo_version > 0) {
        if (task->server_url) {
            FUNC0 (task);
        } else {
            FUNC11 (task, SYNC_ERROR_ID_GENERAL_ERROR);
            return TRUE;
        }
    }

    FUNC3 (mgr->tasks, FUNC4(task->repo_id), task);

    return TRUE;
}