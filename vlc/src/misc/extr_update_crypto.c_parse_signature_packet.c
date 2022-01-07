
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int * unhashed_data; int * hashed_data; } ;
struct TYPE_14__ {TYPE_4__ v4; } ;
struct TYPE_11__ {int s; } ;
struct TYPE_10__ {int s; int r; } ;
struct TYPE_12__ {TYPE_2__ rsa; TYPE_1__ dsa; } ;
struct TYPE_15__ {int version; scalar_t__ public_key_algo; int type; TYPE_5__ specific; TYPE_3__ algo_specific; } ;
typedef TYPE_6__ signature_packet_t ;




 scalar_t__ GCRY_PK_DSA ;
 scalar_t__ GCRY_PK_RSA ;



 int READ_MPI (int ,int) ;

 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int free (int *) ;
 size_t parse_signature_v3_packet (TYPE_6__*,int const*,size_t) ;
 size_t parse_signature_v4_packet (TYPE_6__*,int const*,size_t) ;

__attribute__((used)) static int parse_signature_packet( signature_packet_t *p_sig,
                                   const uint8_t *p_buf, size_t i_packet_len )
{
    if( !i_packet_len )
        return VLC_EGENERIC;

    p_sig->version = *p_buf++;

    size_t i_read;
    switch( p_sig->version )
    {
        case 3:
            i_read = parse_signature_v3_packet( p_sig, p_buf, i_packet_len );
            break;
        case 4:
            p_sig->specific.v4.hashed_data = ((void*)0);
            p_sig->specific.v4.unhashed_data = ((void*)0);
            i_read = parse_signature_v4_packet( p_sig, p_buf, i_packet_len );
            break;
        default:
            return VLC_EGENERIC;
    }

    if( i_read == 0 )
        goto error;

    if( p_sig->public_key_algo != GCRY_PK_DSA && p_sig->public_key_algo != GCRY_PK_RSA )
        goto error;

    switch( p_sig->type )
    {
        case 133:
        case 128:
        case 131:
        case 130:
        case 132:
        case 129:
            break;
        default:
            goto error;
    }

    p_buf--;
    p_buf += i_read;

    if( p_sig->public_key_algo == GCRY_PK_DSA ) {
        READ_MPI(p_sig->algo_specific.dsa.r, 256);
        READ_MPI(p_sig->algo_specific.dsa.s, 256);
    } else if ( p_sig->public_key_algo == GCRY_PK_RSA ) {
        READ_MPI(p_sig->algo_specific.rsa.s, 4096);
    } else
        goto error;

    assert( i_read == i_packet_len );
    if( i_read < i_packet_len )
        goto error;

    return VLC_SUCCESS;

error:

    if( p_sig->version == 4 )
    {
        free( p_sig->specific.v4.hashed_data );
        free( p_sig->specific.v4.unhashed_data );
    }

    return VLC_EGENERIC;
}
