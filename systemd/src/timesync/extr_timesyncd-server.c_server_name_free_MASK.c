#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* current_server_name; int /*<<< orphan*/  fallback_servers; int /*<<< orphan*/  link_servers; int /*<<< orphan*/  system_servers; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  string; TYPE_7__* manager; } ;
typedef  TYPE_1__ ServerName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ SERVER_FALLBACK ; 
 scalar_t__ SERVER_LINK ; 
 scalar_t__ SERVER_SYSTEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

ServerName *FUNC7(ServerName *n) {
        if (!n)
                return NULL;

        FUNC6(n);

        if (n->manager) {
                if (n->type == SERVER_SYSTEM)
                        FUNC0(names, n->manager->system_servers, n);
                else if (n->type == SERVER_LINK)
                        FUNC0(names, n->manager->link_servers, n);
                else if (n->type == SERVER_FALLBACK)
                        FUNC0(names, n->manager->fallback_servers, n);
                else
                        FUNC1("Unknown server type");

                if (n->manager->current_server_name == n)
                        FUNC4(n->manager, NULL);
        }

        FUNC3("Removed server %s.", n->string);

        FUNC2(n->string);
        return FUNC5(n);
}