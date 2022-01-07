
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef int int64_t ;


 int assert (TYPE_1__*) ;
 int from_mtime (int ) ;
 int input_item_GetDuration (int ) ;
 int input_item_IsPreparsed (int ) ;
 int libvlc_printerr (char*) ;

int64_t
libvlc_media_get_duration( libvlc_media_t * p_md )
{
    assert( p_md );

    if( !p_md->p_input_item )
    {
        libvlc_printerr( "No input item" );
        return -1;
    }

    if (!input_item_IsPreparsed( p_md->p_input_item ))
        return -1;

    return from_mtime(input_item_GetDuration( p_md->p_input_item ));
}
