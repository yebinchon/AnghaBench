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
typedef  int /*<<< orphan*/  SeafFilelockManager ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

int
FUNC2 (SeafFilelockManager *mgr,
                              const char *repo_id,
                              GHashTable *new_locked_files)
{
    FUNC1 (mgr, repo_id, new_locked_files);

    int ret = FUNC0 (mgr, repo_id);

    return ret;
}