
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ ASF_HAVE (size_t) ;
 int ASF_SKIP (size_t) ;
 char* FromCharset (char*,int *,size_t) ;

__attribute__((used)) static char *AsfObjectHelperReadString( const uint8_t *p_peek, size_t i_peek, uint8_t **pp_data, size_t i_size )
{
    uint8_t *p_data = *pp_data;
    char *psz_string = ((void*)0);
    if( ASF_HAVE(i_size) )
    {
        psz_string = FromCharset( "UTF-16LE", p_data, i_size );
    }
    ASF_SKIP(i_size);
    *pp_data = p_data;
    return psz_string;
}
