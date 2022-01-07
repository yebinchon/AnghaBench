
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int i_visible_height; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ libvlc_picture_t ;



unsigned int libvlc_picture_get_height( const libvlc_picture_t* pic )
{
    return pic->fmt.i_visible_height;
}
