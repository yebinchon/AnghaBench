
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int gcry_cipher_hd_t ;
struct TYPE_3__ {size_t const quot; int rem; } ;
typedef TYPE_1__ div_t ;


 TYPE_1__ div (size_t,size_t const) ;
 scalar_t__ gcry_cipher_encrypt (int ,int *,size_t const,int *,size_t const) ;
 scalar_t__ gcry_cipher_setctr (int ,void const*,size_t const) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
do_ctr_crypt (gcry_cipher_hd_t hd, const void *ctr, uint8_t *data, size_t len)
{
    const size_t ctrlen = 16;
    div_t d = div (len, ctrlen);

    if (gcry_cipher_setctr (hd, ctr, ctrlen)
     || gcry_cipher_encrypt (hd, data, d.quot * ctrlen, ((void*)0), 0))
        return -1;

    if (d.rem)
    {

        uint8_t dummy[ctrlen];
        data += d.quot * ctrlen;
        memcpy (dummy, data, d.rem);
        memset (dummy + d.rem, 0, ctrlen - d.rem);

        if (gcry_cipher_encrypt (hd, dummy, ctrlen, data, ctrlen))
            return -1;
        memcpy (data, dummy, d.rem);
    }

    return 0;
}
