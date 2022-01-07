
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_window_t ;
struct output_list {int outputs; int * owner; } ;


 struct output_list* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int wl_list_init (int *) ;

struct output_list *output_list_create(vout_window_t *wnd)
{
    struct output_list *ol = malloc(sizeof (*ol));
    if (unlikely(ol == ((void*)0)))
        return ((void*)0);

    ol->owner = wnd;
    wl_list_init(&ol->outputs);
    return ol;
}
