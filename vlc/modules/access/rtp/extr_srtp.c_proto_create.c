
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cipher; int mac; } ;
typedef TYPE_1__ srtp_proto_t ;


 int GCRY_CIPHER_MODE_CTR ;
 int GCRY_MD_FLAG_HMAC ;
 int gcry_cipher_close (int ) ;
 scalar_t__ gcry_cipher_open (int *,int,int ,int ) ;
 scalar_t__ gcry_md_open (int *,int,int ) ;

__attribute__((used)) static int proto_create (srtp_proto_t *p, int gcipher, int gmd)
{
    if (gcry_cipher_open (&p->cipher, gcipher, GCRY_CIPHER_MODE_CTR, 0) == 0)
    {
        if (gcry_md_open (&p->mac, gmd, GCRY_MD_FLAG_HMAC) == 0)
            return 0;
        gcry_cipher_close (p->cipher);
    }
    return -1;
}
