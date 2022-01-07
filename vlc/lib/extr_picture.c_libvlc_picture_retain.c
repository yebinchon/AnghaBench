
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ libvlc_picture_t ;


 int vlc_atomic_rc_inc (int *) ;

void libvlc_picture_retain( libvlc_picture_t* pic )
{
    vlc_atomic_rc_inc( &pic->rc );
}
