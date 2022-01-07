
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_libvlc_instance; } ;
typedef TYPE_2__ libvlc_media_t ;
struct TYPE_5__ {int p_libvlc_int; } ;


 int libvlc_MetadataCancel (int ,TYPE_2__*) ;

void
libvlc_media_parse_stop( libvlc_media_t *media )
{
    libvlc_MetadataCancel( media->p_libvlc_instance->p_libvlc_int, media );
}
