
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_media_source_provider_t ;
typedef int libvlc_int_t ;
struct TYPE_2__ {int * media_source_provider; } ;


 TYPE_1__* libvlc_priv (int *) ;

vlc_media_source_provider_t *
vlc_media_source_provider_Get(libvlc_int_t *libvlc)
{
    return libvlc_priv(libvlc)->media_source_provider;
}
