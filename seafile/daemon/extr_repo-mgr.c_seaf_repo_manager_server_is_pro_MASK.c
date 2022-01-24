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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  repo_mgr; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SERVER_PROP_IS_PRO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* seaf ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

gboolean
FUNC3 (SeafRepoManager *mgr,
                                 const char *server_url)
{
    gboolean ret = FALSE;

    char *is_pro = FUNC1 (seaf->repo_mgr,
                                                          server_url,
                                                          SERVER_PROP_IS_PRO);
    if (is_pro != NULL && FUNC2 (is_pro, "true") == 0)
        ret = TRUE;

    FUNC0 (is_pro);
    return ret;
}