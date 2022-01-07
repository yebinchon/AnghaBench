
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char* FromCharset (char*,int const*,size_t) ;

__attribute__((used)) static inline char *get_wstring( const uint8_t *p_data, size_t i_size )
{
    char *psz_str = FromCharset( "UTF-16LE", p_data, i_size );
    if( psz_str )
        p_data += i_size;
    return psz_str;
}
