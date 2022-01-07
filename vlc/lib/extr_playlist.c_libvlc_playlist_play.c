
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int libvlc_InternalPlay (int ) ;

void libvlc_playlist_play( libvlc_instance_t *p_instance )
{
    libvlc_InternalPlay( p_instance->p_libvlc_int );
}
