#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_9__ {int /*<<< orphan*/  timer_event_source; void* fdname; void* group; void* user; int /*<<< orphan*/  symlinks; void* smack_ip_out; void* smack_ip_in; void* smack; void* bind_to_device; void* tcp_congestion; int /*<<< orphan*/  service; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  exec_command; int /*<<< orphan*/  exec_runtime; int /*<<< orphan*/  peers_by_address; } ;
struct TYPE_8__ {int /*<<< orphan*/ * socket; } ;
typedef  TYPE_1__ SocketPeer ;
typedef  TYPE_2__ Socket ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _SOCKET_EXEC_COMMAND_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(Unit *u) {
        Socket *s = FUNC0(u);
        SocketPeer *p;

        FUNC1(s);

        FUNC9(s);

        while ((p = FUNC8(s->peers_by_address)))
                p->socket = NULL;

        s->peers_by_address = FUNC7(s->peers_by_address);

        s->exec_runtime = FUNC4(s->exec_runtime, false);
        FUNC3(s->exec_command, _SOCKET_EXEC_COMMAND_MAX);
        s->control_command = NULL;

        FUNC2(&s->dynamic_creds);

        FUNC10(s);

        FUNC12(&s->service);

        s->tcp_congestion = FUNC5(s->tcp_congestion);
        s->bind_to_device = FUNC5(s->bind_to_device);

        s->smack = FUNC5(s->smack);
        s->smack_ip_in = FUNC5(s->smack_ip_in);
        s->smack_ip_out = FUNC5(s->smack_ip_out);

        FUNC11(s->symlinks);

        s->user = FUNC5(s->user);
        s->group = FUNC5(s->group);

        s->fdname = FUNC5(s->fdname);

        s->timer_event_source = FUNC6(s->timer_event_source);
}