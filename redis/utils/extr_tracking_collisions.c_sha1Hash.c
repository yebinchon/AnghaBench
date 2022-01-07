
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int hash64 ;
typedef int SHA1_CTX ;


 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,size_t) ;
 int memcpy (int *,unsigned char*,int) ;

uint64_t sha1Hash(char *key, size_t len) {
    SHA1_CTX ctx;
    unsigned char hash[20];

    SHA1Init(&ctx);
    SHA1Update(&ctx,(unsigned char*)key,len);
    SHA1Final(hash,&ctx);
    uint64_t hash64;
    memcpy(&hash64,hash,sizeof(hash64));
    return hash64;
}
