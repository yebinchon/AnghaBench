
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_sha384 ;


 int fz_sha512_update (int *,unsigned char const*,size_t) ;

void fz_sha384_update(fz_sha384 *context, const unsigned char *input, size_t inlen)
{
 fz_sha512_update(context, input, inlen);
}
