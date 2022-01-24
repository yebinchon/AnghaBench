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
typedef  int gboolean ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static gboolean
FUNC3 (const char *worktree, const char *repo_name)
{
    char *basename = FUNC1 (worktree);
    gboolean ret = FALSE;
    ret = (FUNC2 (basename, repo_name) == 0);
    FUNC0 (basename);
    return ret;
}