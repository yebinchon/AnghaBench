
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char*,unsigned long) ;

void
md5_signature(unsigned char *key, unsigned long length, unsigned char *result)
{
    MD5_CTX my_md5;

    MD5_Init(&my_md5);
    (void)MD5_Update(&my_md5, key, length);
    MD5_Final(result, &my_md5);
}
