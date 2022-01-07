
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long x; int * buf; } ;
struct TYPE_5__ {TYPE_1__ rc4; } ;
typedef TYPE_2__ prng_state ;


 int CRYPT_OK ;

int rc4_add_entropy(const unsigned char *buf, unsigned long len, prng_state *prng)
{

    if (prng->rc4.x + len > 256) {
       if (prng->rc4.x == 256) {

          return CRYPT_OK;
       } else {

          len = 256 - prng->rc4.x;
       }
    }

    while (len--) {
       prng->rc4.buf[prng->rc4.x++] = *buf++;
    }

    return CRYPT_OK;
}
