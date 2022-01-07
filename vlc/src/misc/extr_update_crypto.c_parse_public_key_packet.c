
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int e; int n; } ;
struct TYPE_6__ {int y; int g; int q; int p; } ;
struct TYPE_8__ {TYPE_2__ rsa; TYPE_1__ dsa; } ;
struct TYPE_9__ {int version; scalar_t__ algo; TYPE_3__ sig; int timestamp; } ;
typedef TYPE_4__ public_key_packet_t ;


 scalar_t__ GCRY_PK_DSA ;
 scalar_t__ GCRY_PK_RSA ;
 int READ_MPI (int ,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int parse_public_key_packet( public_key_packet_t *p_key,
                                    const uint8_t *p_buf, size_t i_packet_len )
{
    if( i_packet_len < 6 )
        return VLC_EGENERIC;

    size_t i_read = 0;

    p_key->version = *p_buf++; i_read++;
    if( p_key->version != 4 )
        return VLC_EGENERIC;


    memcpy( p_key->timestamp, p_buf, 4 ); p_buf += 4; i_read += 4;

    p_key->algo = *p_buf++; i_read++;
    if( p_key->algo == GCRY_PK_DSA ) {
        READ_MPI(p_key->sig.dsa.p, 3072);
        READ_MPI(p_key->sig.dsa.q, 256);
        READ_MPI(p_key->sig.dsa.g, 3072);
        READ_MPI(p_key->sig.dsa.y, 3072);
    } else if ( p_key->algo == GCRY_PK_RSA ) {
        READ_MPI(p_key->sig.rsa.n, 4096);
        READ_MPI(p_key->sig.rsa.e, 4096);
    } else
        return VLC_EGENERIC;

    if( i_read == i_packet_len )
        return VLC_SUCCESS;



error:
    return VLC_EGENERIC;
}
