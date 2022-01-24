#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {char* email; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ GList ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 TYPE_4__* seaf ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

int
FUNC8 (const char *server_addr, const char *email, GError **error)
{
    if (!server_addr || !email) {
        FUNC4 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    GList *ptr, *repos = FUNC6(seaf->repo_mgr, -1, -1);
    if (!repos) {
        return 0;
    }

    for (ptr = repos; ptr; ptr = ptr->next) {
        SeafRepo *repo = (SeafRepo*)ptr->data;
        char *addr = NULL;
        FUNC7(seaf->repo_mgr,
                                              repo->id,
                                              &addr, /* addr */
                                              NULL); /* port */

        if (FUNC5(addr, server_addr) == 0 && FUNC5(repo->email, email) == 0) {
            if (FUNC1(repo) < 0) {
                return -1;
            }
        }

        FUNC2 (addr);
    }

    FUNC3 (repos);

    FUNC0 (server_addr, email);

    return 0;
}