
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_mux; } ;
typedef TYPE_1__ vod_media_t ;



const char *vod_get_mux(const vod_media_t *p_media)
{
    return p_media->psz_mux;
}
