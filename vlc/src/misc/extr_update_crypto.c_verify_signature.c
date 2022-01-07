
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ public_key_algo; } ;
typedef TYPE_1__ signature_packet_t ;
typedef int public_key_packet_t ;


 scalar_t__ GCRY_PK_DSA ;
 scalar_t__ GCRY_PK_RSA ;
 int VLC_EGENERIC ;
 int verify_signature_dsa (TYPE_1__*,int *,int *) ;
 int verify_signature_rsa (TYPE_1__*,int *,int *) ;

int verify_signature( signature_packet_t *sign, public_key_packet_t *p_key,
                      uint8_t *p_hash )
{
    if (sign->public_key_algo == GCRY_PK_DSA)
        return verify_signature_dsa(sign, p_key, p_hash);
    else if (sign->public_key_algo == GCRY_PK_RSA)
        return verify_signature_rsa(sign, p_key, p_hash);
    else
        return VLC_EGENERIC;
}
