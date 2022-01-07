
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_registry {int dummy; } ;
struct output_list {int outputs; int owner; } ;
struct output_data {int name; int version; int node; int * wl_output; int owner; } ;


 int free (struct output_data*) ;
 struct output_data* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_output_add_listener (int *,int *,struct output_data*) ;
 int wl_output_cbs ;
 int wl_output_interface ;
 int * wl_registry_bind (struct wl_registry*,int,int *,int) ;

int output_create(struct output_list *ol, struct wl_registry *registry,
                  uint32_t name, uint32_t version)
{
    if (unlikely(ol == ((void*)0)))
        return -1;

    struct output_data *od = malloc(sizeof (*od));
    if (unlikely(od == ((void*)0)))
        return -1;

    if (version > 3)
        version = 3;

    od->wl_output = wl_registry_bind(registry, name, &wl_output_interface,
                                     version);
    if (unlikely(od->wl_output == ((void*)0)))
    {
        free(od);
        return -1;
    }

    od->owner = ol->owner;
    od->name = name;
    od->version = version;

    wl_output_add_listener(od->wl_output, &wl_output_cbs, od);
    wl_list_insert(&ol->outputs, &od->node);
    return 0;
}
