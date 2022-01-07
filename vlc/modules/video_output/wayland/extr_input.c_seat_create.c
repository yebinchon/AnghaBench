
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_window_t ;
typedef int uint32_t ;
struct wl_registry {int dummy; } ;
struct wl_list {int dummy; } ;
struct seat_data {int version; int node; int * seat; int * keyboard; int xkb; int * pointer; int * owner; } ;


 int XKB_CONTEXT_NO_FLAGS ;
 int free (struct seat_data*) ;
 struct seat_data* malloc (int) ;
 int seat_cbs ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int wl_list_insert (struct wl_list*,int *) ;
 int * wl_registry_bind (struct wl_registry*,int,int *,int) ;
 int wl_seat_add_listener (int *,int *,struct seat_data*) ;
 int wl_seat_interface ;
 int xkb_context_new (int ) ;

int seat_create(vout_window_t *wnd, struct wl_registry *registry,
                uint32_t name, uint32_t version, struct wl_list *list)
{
    struct seat_data *sd = malloc(sizeof (*sd));
    if (unlikely(sd == ((void*)0)))
        return -1;

    if (version > 5)
        version = 5;

    sd->seat = wl_registry_bind(registry, name, &wl_seat_interface, version);
    if (unlikely(sd->seat == ((void*)0)))
    {
        free(sd);
        return -1;
    }

    sd->owner = wnd;
    sd->pointer = ((void*)0);






    sd->version = version;

    wl_seat_add_listener(sd->seat, &seat_cbs, sd);
    wl_list_insert(list, &sd->node);
    return 0;
}
