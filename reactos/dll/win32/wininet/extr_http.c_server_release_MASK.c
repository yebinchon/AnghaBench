#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* scheme_host_port; struct TYPE_4__* name; scalar_t__ cert_chain; int /*<<< orphan*/  entry; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ server_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  connection_pool_cs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(server_t *server)
{
    if(FUNC2(&server->ref))
        return;

#ifdef __REACTOS__
    EnterCriticalSection(&connection_pool_cs);
#endif
    FUNC5(&server->entry);
#ifdef __REACTOS__
    LeaveCriticalSection(&connection_pool_cs);
#endif

    if(server->cert_chain)
        FUNC0(server->cert_chain);
    FUNC4(server->name);
    FUNC4(server->scheme_host_port);
    FUNC4(server);
}