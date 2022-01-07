
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int hashed_data_len; int timestamp; } ;
struct TYPE_6__ {TYPE_1__ v3; } ;
struct TYPE_7__ {int * hash_verification; int digest_algo; int public_key_algo; int issuer_longid; TYPE_2__ specific; int type; } ;
typedef TYPE_3__ signature_packet_t ;


 int assert (int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static size_t parse_signature_v3_packet( signature_packet_t *p_sig,
                                      const uint8_t *p_buf, size_t i_sig_len )
{
    size_t i_read = 1;

    if( i_sig_len < 19 )
        return 0;

    p_sig->specific.v3.hashed_data_len = *p_buf++; i_read++;
    if( p_sig->specific.v3.hashed_data_len != 5 )
        return 0;

    p_sig->type = *p_buf++; i_read++;

    memcpy( p_sig->specific.v3.timestamp, p_buf, 4 );
    p_buf += 4; i_read += 4;

    memcpy( p_sig->issuer_longid, p_buf, 8 );
    p_buf += 8; i_read += 8;

    p_sig->public_key_algo = *p_buf++; i_read++;

    p_sig->digest_algo = *p_buf++; i_read++;

    p_sig->hash_verification[0] = *p_buf++; i_read++;
    p_sig->hash_verification[1] = *p_buf++; i_read++;

    assert( i_read == 19 );

    return i_read;
}
