
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_lang; scalar_t__ iconv_u16be; } ;
typedef TYPE_1__ atsc_a65_handle_t ;


 int free (TYPE_1__*) ;
 int vlc_iconv_close (scalar_t__) ;

void atsc_a65_handle_Release( atsc_a65_handle_t *p_handle )
{
    if( p_handle->iconv_u16be )
        vlc_iconv_close( p_handle->iconv_u16be );
    free( p_handle->psz_lang );
    free( p_handle );
}
