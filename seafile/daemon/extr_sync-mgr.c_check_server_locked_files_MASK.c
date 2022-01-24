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
typedef  void* gpointer ;
struct TYPE_4__ {int /*<<< orphan*/  http_server_states; } ;
typedef  TYPE_1__ SeafSyncManager ;
typedef  int /*<<< orphan*/  HttpServerState ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void**,void**) ; 

__attribute__((used)) static void
FUNC3 (SeafSyncManager *mgr, GList *repos)
{
    GHashTableIter iter;
    gpointer key, value;
    char *host;
    HttpServerState *state;

    FUNC1 (&iter, mgr->http_server_states);
    while (FUNC2 (&iter, &key, &value)) {
        host = key;
        state = value;
        FUNC0 (mgr, host, state, repos);
    }
}