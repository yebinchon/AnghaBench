
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_picture_type_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ libvlc_picture_t ;



libvlc_picture_type_t libvlc_picture_type( const libvlc_picture_t* pic )
{
    return pic->type;
}
