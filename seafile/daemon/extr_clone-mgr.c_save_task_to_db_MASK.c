#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_6__ {int enc_version; int /*<<< orphan*/  repo_id; scalar_t__ server_url; scalar_t__ is_readonly; scalar_t__ repo_salt; int /*<<< orphan*/ * repo_version; scalar_t__ random_key; scalar_t__ passwd; int /*<<< orphan*/  email; int /*<<< orphan*/  peer_port; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  worktree; int /*<<< orphan*/  peer_id; int /*<<< orphan*/  token; int /*<<< orphan*/  repo_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ SeafCloneManager ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10 (SeafCloneManager *mgr, CloneTask *task)
{
    char *sql;

    if (task->passwd)
        sql = FUNC8 ("REPLACE INTO CloneTasks VALUES "
            "('%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q')",
                                task->repo_id, task->repo_name,
                                task->token, task->peer_id,
                                task->worktree, task->passwd,
                                task->peer_addr, task->peer_port, task->email);
    else
        sql = FUNC8 ("REPLACE INTO CloneTasks VALUES "
            "('%q', '%q', '%q', '%q', '%q', NULL, '%q', '%q', '%q')",
                                task->repo_id, task->repo_name,
                                task->token, task->peer_id,
                                task->worktree, task->peer_addr,
                                task->peer_port, task->email);

    if (FUNC9 (mgr->db, sql) < 0) {
        FUNC7 (sql);
        return -1;
    }
    FUNC7 (sql);

    if (task->passwd && task->enc_version >= 2 && task->random_key) {
        sql = FUNC8 ("REPLACE INTO CloneEncInfo VALUES "
                               "('%q', %d, '%q')",
                               task->repo_id, task->enc_version, task->random_key);
        if (FUNC9 (mgr->db, sql) < 0) {
            FUNC7 (sql);
            return -1;
        }
        FUNC7 (sql);
    }

    sql = FUNC8 ("REPLACE INTO CloneVersionInfo VALUES "
                           "('%q', %d)",
                           task->repo_id, *task->repo_version);
    if (FUNC9 (mgr->db, sql) < 0) {
        FUNC7 (sql);
        return -1;
    }
    FUNC7 (sql);

    if (task->is_readonly || task->server_url || task->repo_salt) {
        /* need to store more info */
        json_t *object = NULL;
        gchar *info = NULL;

        object = FUNC4 ();
        FUNC5 (object, "is_readonly", FUNC3 (task->is_readonly));
        if (task->server_url)
            FUNC5 (object, "server_url", FUNC6(task->server_url));
    
        info = FUNC2 (object, 0);
        FUNC1 (object);
        sql = FUNC8 ("REPLACE INTO CloneTasksMoreInfo VALUES "
                           "('%q', '%q')", task->repo_id, *info);
        if (FUNC9 (mgr->db, sql) < 0) {
            FUNC7 (sql);
            FUNC0 (info);
            return -1;
        }
        FUNC7 (sql);
        FUNC0 (info);
    }

    return 0;
}