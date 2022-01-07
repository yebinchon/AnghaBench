
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef void app ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {void* apps; int net_client_list; int root_window; int * conn; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 void* AddApp (TYPE_1__*,int ) ;
 int DelApp (void*) ;
 int XA_WINDOW ;
 int cmpapp ;
 int free (int *) ;
 int tdelete (void*,void**,int ) ;
 int tdestroy (void*,int (*) (void*)) ;
 void** tfind (int *,void**,int ) ;
 void** tsearch (void*,void**,int ) ;
 int xcb_get_property (int *,int,int ,int ,int ,int ,int) ;
 int * xcb_get_property_reply (int *,int ,int *) ;
 int * xcb_get_property_value (int *) ;
 int xcb_get_property_value_length (int *) ;

__attribute__((used)) static void UpdateApps (services_discovery_t *sd)
{
    services_discovery_sys_t *p_sys = sd->p_sys;
    xcb_connection_t *conn = p_sys->conn;

    xcb_get_property_reply_t *r =
        xcb_get_property_reply (conn,
            xcb_get_property (conn, 0, p_sys->root_window,
                              p_sys->net_client_list, XA_WINDOW, 0, 1024),
            ((void*)0));
    if (r == ((void*)0))
        return;

    xcb_window_t *ent = xcb_get_property_value (r);
    int n = xcb_get_property_value_length (r) / 4;
    void *newnodes = ((void*)0), *oldnodes = p_sys->apps;

    for (int i = 0; i < n; i++)
    {
        xcb_window_t id = *(ent++);
        struct app *app;

        void **pa = tfind (&id, &oldnodes, cmpapp);
        if (pa != ((void*)0))
        {
            app = *pa;
            tdelete (app, &oldnodes, cmpapp);
        }
        else
        {
            app = AddApp (sd, id);
            if (app == ((void*)0))
                continue;
        }

        pa = tsearch (app, &newnodes, cmpapp);
        if (pa == ((void*)0) || *pa != app )
            DelApp (app);
    }
    free (r);


    tdestroy (oldnodes, DelApp);
    p_sys->apps = newnodes;
}
