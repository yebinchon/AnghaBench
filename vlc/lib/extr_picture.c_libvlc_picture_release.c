
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ converted; int fmt; int rc; } ;
typedef TYPE_1__ libvlc_picture_t ;


 int block_Release (scalar_t__) ;
 int free (TYPE_1__*) ;
 int video_format_Clean (int *) ;
 int vlc_atomic_rc_dec (int *) ;

void libvlc_picture_release( libvlc_picture_t* pic )
{
    if ( vlc_atomic_rc_dec( &pic->rc ) == 0 )
        return;
    video_format_Clean( &pic->fmt );
    if ( pic->converted )
        block_Release( pic->converted );
    free( pic );
}
