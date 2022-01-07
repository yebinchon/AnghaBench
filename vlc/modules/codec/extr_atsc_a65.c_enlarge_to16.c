
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 char* malloc (size_t) ;
 int memset (char*,char,size_t) ;

__attribute__((used)) static char *enlarge_to16( const uint8_t *p_src, size_t i_src, uint8_t i_prefix )
{
    if( i_src == 0 )
        return ((void*)0);

    char *psz_new_allocated = malloc( i_src * 2 + 1 );
    char *psz_new = psz_new_allocated;

    if( psz_new )
    {
        memset( psz_new, i_prefix, i_src * 2 );
        psz_new[ i_src * 2 ] = 0;
        while( i_src-- )
        {
            psz_new[1] = p_src[0];
            p_src++;
            psz_new += 2;
        }
    }
    return psz_new_allocated;
}
