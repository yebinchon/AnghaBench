
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * malloc (int const) ;
 int strlen (char const*) ;
 size_t vlc_b64_decode_binary_to_buffer (int *,int const,char const*) ;

size_t vlc_b64_decode_binary( uint8_t **pp_dst, const char *psz_src )
{
    const int i_src = strlen( psz_src );
    uint8_t *p_dst;

    *pp_dst = p_dst = malloc( i_src );
    if( !p_dst )
        return 0;
    return vlc_b64_decode_binary_to_buffer( p_dst, i_src, psz_src );
}
