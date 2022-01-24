#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SeafRepoManager ;
typedef  int /*<<< orphan*/  SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*,char const*) ; 

SeafRepo*
FUNC4 (SeafRepoManager *mgr,
                                   const char *name,
                                   const char *desc)
{
    SeafRepo *repo;
    char *repo_id;
    
    repo_id = FUNC1 ();
    repo = FUNC3 (repo_id, name, desc);
    if (!repo) {
        FUNC0 (repo_id);
        return NULL;
    }
    FUNC0 (repo_id);

    /* we directly create dir because it shouldn't exist */
    /* if (seaf_repo_mkdir (repo, base) < 0) { */
    /*     seaf_repo_free (repo); */
    /*     goto out; */
    /* } */

    FUNC2 (mgr, repo);
    return repo;
}