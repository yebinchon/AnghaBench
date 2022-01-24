#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t sources_size; int /*<<< orphan*/  events; int /*<<< orphan*/  listen_event; int /*<<< orphan*/  sigint_event; int /*<<< orphan*/  sigterm_event; int /*<<< orphan*/  writers; int /*<<< orphan*/  _single_writer; scalar_t__ sources; int /*<<< orphan*/  daemons; } ;
typedef  TYPE_1__ RemoteServer ;

/* Variables and functions */
 int /*<<< orphan*/  MHDDaemonWrapper_free ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* journal_remote_server_global ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(RemoteServer *s) {
        size_t i;

#if HAVE_MICROHTTPD
        hashmap_free_with_destructor(s->daemons, MHDDaemonWrapper_free);
#endif

        FUNC0(s->sources_size == 0 || s->sources);
        for (i = 0; i < s->sources_size; i++)
                FUNC4(s, i);
        FUNC1(s->sources);

        FUNC7(s->_single_writer);
        FUNC2(s->writers);

        FUNC5(s->sigterm_event);
        FUNC5(s->sigint_event);
        FUNC5(s->listen_event);
        FUNC6(s->events);

        if (s == journal_remote_server_global)
                journal_remote_server_global = NULL;

        /* fds that we're listening on remain open... */
}