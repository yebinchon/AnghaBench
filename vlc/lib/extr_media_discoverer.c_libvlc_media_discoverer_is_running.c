
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_sd; } ;
typedef TYPE_1__ libvlc_media_discoverer_t ;



bool libvlc_media_discoverer_is_running(libvlc_media_discoverer_t * p_mdis)
{
    return p_mdis->p_sd != ((void*)0);
}
