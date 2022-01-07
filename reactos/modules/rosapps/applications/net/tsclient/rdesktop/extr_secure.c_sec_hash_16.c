
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int MD5_CTX ;


 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,int) ;

void
sec_hash_16(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2)
{
 MD5_CTX md5;

 MD5_Init(&md5);
 MD5_Update(&md5, in, 16);
 MD5_Update(&md5, salt1, 32);
 MD5_Update(&md5, salt2, 32);
 MD5_Final(out, &md5);
}
