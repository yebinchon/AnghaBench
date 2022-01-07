
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_sha384 ;


 int fz_sha512_final (int *,unsigned char*) ;

void fz_sha384_final(fz_sha384 *context, unsigned char digest[64])
{
 fz_sha512_final(context, digest);
}
