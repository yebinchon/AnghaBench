#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_7__ {TYPE_1__* data; struct TYPE_7__* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  REPO_PROP_SERVER_URL ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 TYPE_4__* seaf ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC9 (SeafRepoManager *mgr,
                                            const char *old_host,
                                            const char *new_host,
                                            const char *new_server_url)
{
    GList *ptr, *repos = FUNC4 (seaf->repo_mgr, 0, -1);
    SeafRepo *r;
    char *canon_server_url = FUNC0(new_server_url);

    for (ptr = repos; ptr; ptr = ptr->next) {
        r = ptr->data;
                
        char *relay_addr = NULL;
        char *relay_port = NULL;
        FUNC5 (seaf->repo_mgr, r->id, 
                                               &relay_addr, &relay_port);
        if (FUNC3(relay_addr, old_host) == 0) {
            FUNC7 (seaf->repo_mgr, r->id,
                                                   new_host, relay_port);

            /* Update server property before server_url is changed. */
            FUNC8 (mgr, r->id, canon_server_url);

            FUNC6 (
                seaf->repo_mgr, r->id, REPO_PROP_SERVER_URL, canon_server_url);
        }

        FUNC1 (relay_addr);
        FUNC1 (relay_port);
    }

    FUNC2 (repos);
    FUNC1 (canon_server_url);

    return 0;
}