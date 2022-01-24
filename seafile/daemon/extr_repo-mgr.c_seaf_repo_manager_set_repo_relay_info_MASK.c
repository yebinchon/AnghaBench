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

/* Variables and functions */
 int /*<<< orphan*/  REPO_PROP_RELAY_ADDR ; 
 int /*<<< orphan*/  REPO_PROP_RELAY_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 

int
FUNC1 (SeafRepoManager *mgr,
                                       const char *repo_id,
                                       const char *relay_addr,
                                       const char *relay_port)
{
    FUNC0 (mgr, repo_id, REPO_PROP_RELAY_ADDR, relay_addr);
    FUNC0 (mgr, repo_id, REPO_PROP_RELAY_PORT, relay_port);
    return 0;
}