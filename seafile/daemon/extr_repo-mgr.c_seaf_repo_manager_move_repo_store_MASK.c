#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  seaf_dir; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*,char const*) ; 
 TYPE_1__* seaf ; 

void
FUNC4 (SeafRepoManager *mgr,
                                   const char *type,
                                   const char *repo_id)
{
    char *src = NULL;
    char *dst = NULL;

    src = FUNC0 (seaf->seaf_dir, "storage", type, repo_id, NULL);
    dst = FUNC3 (type, repo_id);
    if (dst) {
        FUNC2 (src, dst);
    }
    FUNC1 (src);
    FUNC1 (dst);
}