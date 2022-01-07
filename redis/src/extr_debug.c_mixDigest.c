
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA1_CTX ;


 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int xorDigest (unsigned char*,char*,size_t) ;

void mixDigest(unsigned char *digest, void *ptr, size_t len) {
    SHA1_CTX ctx;
    char *s = ptr;

    xorDigest(digest,s,len);
    SHA1Init(&ctx);
    SHA1Update(&ctx,digest,20);
    SHA1Final(digest,&ctx);
}
