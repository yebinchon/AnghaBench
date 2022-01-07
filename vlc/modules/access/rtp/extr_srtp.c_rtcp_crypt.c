
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int gcry_cipher_hd_t ;


 int rtp_crypt (int ,int,int,int,int const*,int *,size_t) ;

__attribute__((used)) static int
rtcp_crypt (gcry_cipher_hd_t hd, uint32_t ssrc, uint32_t index,
            const uint32_t *salt, uint8_t *data, size_t len)
{
    return rtp_crypt (hd, ssrc, index >> 16, index & 0xffff, salt, data, len);
}
