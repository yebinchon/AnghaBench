#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  void app ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_6__ {void* apps; int /*<<< orphan*/  net_client_list; int /*<<< orphan*/  root_window; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  XA_WINDOW ; 
 int /*<<< orphan*/  cmpapp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/  (*) (void*)) ; 
 void** FUNC5 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 void** FUNC6 (void*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11 (services_discovery_t *sd)
{
    services_discovery_sys_t *p_sys = sd->p_sys;
    xcb_connection_t *conn = p_sys->conn;

    xcb_get_property_reply_t *r =
        FUNC8 (conn,
            FUNC7 (conn, false, p_sys->root_window,
                              p_sys->net_client_list, XA_WINDOW, 0, 1024),
            NULL);
    if (r == NULL)
        return; /* FIXME: remove all entries */

    xcb_window_t *ent = FUNC9 (r);
    int n = FUNC10 (r) / 4;
    void *newnodes = NULL, *oldnodes = p_sys->apps;

    for (int i = 0; i < n; i++)
    {
        xcb_window_t id = *(ent++);
        struct app *app;

        void **pa = FUNC5 (&id, &oldnodes, cmpapp);
        if (pa != NULL) /* existing entry */
        {
            app = *pa;
            FUNC3 (app, &oldnodes, cmpapp);
        }
        else /* new entry */
        {
            app = FUNC0 (sd, id);
            if (app == NULL)
                continue;
        }

        pa = FUNC6 (app, &newnodes, cmpapp);
        if (pa == NULL /* OOM */ || *pa != app /* buggy window manager */)
            FUNC1 (app);
    }
    FUNC2 (r);

    /* Remove old nodes */
    FUNC4 (oldnodes, DelApp);
    p_sys->apps = newnodes;
}