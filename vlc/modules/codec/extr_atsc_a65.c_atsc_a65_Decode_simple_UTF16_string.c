
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ iconv_u16be; } ;
typedef TYPE_1__ atsc_a65_handle_t ;


 scalar_t__ VLC_ICONV_ERR ;
 int free (char*) ;
 char* malloc (size_t const) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 scalar_t__ vlc_iconv_open (char*,char*) ;

char * atsc_a65_Decode_simple_UTF16_string( atsc_a65_handle_t *p_handle, const uint8_t *p_buffer, size_t i_buffer )
{
    if( i_buffer < 1 )
        return ((void*)0);

    if( !p_handle->iconv_u16be )
    {
        if ( !(p_handle->iconv_u16be = vlc_iconv_open("UTF-8", "UTF-16BE")) )
            return ((void*)0);
    }
    else if ( VLC_ICONV_ERR == vlc_iconv( p_handle->iconv_u16be, ((void*)0), ((void*)0), ((void*)0), ((void*)0) ) )
    {
        return ((void*)0);
    }

    const size_t i_target_buffer = i_buffer * 3 / 2;
    size_t i_target_remaining = i_target_buffer;
    const char *psz_toconvert = (const char *) p_buffer;
    char *psz_converted_end;
    char *psz_converted = psz_converted_end = malloc( i_target_buffer );

    if( unlikely(!psz_converted) )
        return ((void*)0);

    if( VLC_ICONV_ERR == vlc_iconv( p_handle->iconv_u16be, &psz_toconvert, &i_buffer,
                                                           &psz_converted_end, &i_target_remaining ) )
    {
        free( psz_converted );
        psz_converted = ((void*)0);
    }
    else
        psz_converted[ i_target_buffer - i_target_remaining - 1 ] = 0;

    return psz_converted;
}
