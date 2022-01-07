
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_width; int i_bits_per_pixel; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ fmt; } ;
typedef TYPE_2__ libvlc_picture_t ;


 int assert (int) ;
 scalar_t__ libvlc_picture_Argb ;

unsigned int libvlc_picture_get_stride( const libvlc_picture_t *pic )
{
    assert( pic->type == libvlc_picture_Argb );
    return pic->fmt.i_width * pic->fmt.i_bits_per_pixel / 8;
}
