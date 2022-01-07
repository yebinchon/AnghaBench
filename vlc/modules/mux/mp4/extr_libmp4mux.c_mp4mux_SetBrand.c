
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int uint32_t ;
struct TYPE_5__ {int i_minor; int i_major; } ;
struct TYPE_6__ {TYPE_1__ brands; } ;
typedef TYPE_2__ mp4mux_handle_t ;


 int mp4mux_AddExtraBrand (TYPE_2__*,int ) ;

void mp4mux_SetBrand(mp4mux_handle_t *h, vlc_fourcc_t i_major, uint32_t i_minor)
{
    h->brands.i_major = i_major;
    h->brands.i_minor = i_minor;
    mp4mux_AddExtraBrand(h, i_major);
}
