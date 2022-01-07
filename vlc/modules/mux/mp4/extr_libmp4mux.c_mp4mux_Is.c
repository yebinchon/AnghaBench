
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
typedef TYPE_1__ mp4mux_handle_t ;
typedef enum mp4mux_options { ____Placeholder_mp4mux_options } mp4mux_options ;



bool mp4mux_Is(mp4mux_handle_t *h, enum mp4mux_options o)
{
    return h->options & o;
}
