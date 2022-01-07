
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int digest_algo; } ;
typedef TYPE_1__ signature_packet_t ;
typedef int gcry_md_hd_t ;


 int gcry_md_close (int ) ;
 scalar_t__ gcry_md_open (int *,int ,int ) ;
 int * hash_finish (int ,TYPE_1__*) ;
 scalar_t__ hash_from_binary_file (char const*,int ) ;

uint8_t *hash_from_file( const char *psz_file, signature_packet_t *p_sig )
{
    gcry_md_hd_t hd;
    if( gcry_md_open( &hd, p_sig->digest_algo, 0 ) )
        return ((void*)0);

    if( hash_from_binary_file( psz_file, hd ) < 0 )
    {
        gcry_md_close( hd );
        return ((void*)0);
    }

    return hash_finish( hd, p_sig );
}
