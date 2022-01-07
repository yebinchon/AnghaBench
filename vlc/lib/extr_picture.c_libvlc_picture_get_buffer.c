
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* converted; } ;
typedef TYPE_2__ libvlc_picture_t ;
struct TYPE_4__ {size_t i_buffer; unsigned char const* p_buffer; } ;


 int assert (int ) ;

const unsigned char* libvlc_picture_get_buffer( const libvlc_picture_t* pic,
                                                size_t *size )
{
    assert( size != ((void*)0) );
    *size = pic->converted->i_buffer;
    return pic->converted->p_buffer;
}
