
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
typedef TYPE_1__ mp4mux_handle_t ;


 int QUICKTIME ;
 int USE64BITEXT ;

void mp4mux_Set64BitExt(mp4mux_handle_t *h)
{


    if(h->options & QUICKTIME)
        return;

    h->options |= USE64BITEXT;
}
