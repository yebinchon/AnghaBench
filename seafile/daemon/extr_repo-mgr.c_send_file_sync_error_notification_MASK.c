#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {int /*<<< orphan*/  mq_mgr; int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC11 (const char *repo_id,
                                   const char *repo_name,
                                   const char *path,
                                   int err_id)
{
    if (!repo_name) {
        SeafRepo *repo = FUNC8 (seaf->repo_mgr, repo_id);
        if (!repo)
            return;
        repo_name = repo->name;
    }

    FUNC9 (repo_id, repo_name, path, err_id);

    FUNC10 (seaf->sync_mgr, repo_id, err_id);

    json_t *object;
    char *str;

    object = FUNC4 ();
    FUNC5 (object, "repo_id", FUNC6(repo_id));
    FUNC5 (object, "repo_name", FUNC6(repo_name));
    FUNC5 (object, "path", FUNC6(path));
    FUNC5 (object, "err_id", FUNC3(err_id));

    str = FUNC2 (object, 0);

    FUNC7 (seaf->mq_mgr,
                                          "sync.error",
                                          str);

    FUNC0 (str);
    FUNC1 (object);
}