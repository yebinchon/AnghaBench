
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_minor; scalar_t__ i_major; int extra; } ;
struct TYPE_6__ {int options; TYPE_1__ brands; int tracks; } ;
typedef TYPE_2__ mp4mux_handle_t ;
typedef enum mp4mux_options { ____Placeholder_mp4mux_options } mp4mux_options ;


 int ARRAY_INIT (int ) ;
 TYPE_2__* malloc (int) ;
 int vlc_array_init (int *) ;

mp4mux_handle_t * mp4mux_New(enum mp4mux_options options)
{
    mp4mux_handle_t *h = malloc(sizeof(*h));
    vlc_array_init(&h->tracks);
    ARRAY_INIT(h->brands.extra);
    h->brands.i_major = 0;
    h->brands.i_minor = 0;
    h->options = options;
    return h;
}
