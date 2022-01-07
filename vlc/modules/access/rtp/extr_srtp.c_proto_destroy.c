
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cipher; int mac; } ;
typedef TYPE_1__ srtp_proto_t ;


 int gcry_cipher_close (int ) ;
 int gcry_md_close (int ) ;

__attribute__((used)) static void proto_destroy (srtp_proto_t *p)
{
    gcry_md_close (p->mac);
    gcry_cipher_close (p->cipher);
}
