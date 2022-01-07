
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ type; int digest_algo; } ;
typedef TYPE_1__ signature_packet_t ;
typedef int gcry_md_hd_t ;


 scalar_t__ TEXT_SIGNATURE ;
 scalar_t__ gcry_md_open (int *,int ,int ) ;
 int gcry_md_putc (int ,char) ;
 int gcry_md_write (int ,char const*,size_t) ;
 int * hash_finish (int ,TYPE_1__*) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;

uint8_t *hash_from_text( const char *psz_string,
        signature_packet_t *p_sig )
{
    gcry_md_hd_t hd;
    if( gcry_md_open( &hd, p_sig->digest_algo, 0 ) )
        return ((void*)0);

    if( p_sig->type == TEXT_SIGNATURE )
    while( *psz_string )
    {
        size_t i_len = strcspn( psz_string, "\r\n" );

        if( i_len )
        {
            gcry_md_write( hd, psz_string, i_len );
            psz_string += i_len;
        }
        gcry_md_putc( hd, '\r' );
        gcry_md_putc( hd, '\n' );

        if( *psz_string == '\r' )
            psz_string++;
        if( *psz_string == '\n' )
            psz_string++;
    }
    else
        gcry_md_write( hd, psz_string, strlen( psz_string ) );

    return hash_finish( hd, p_sig );
}
