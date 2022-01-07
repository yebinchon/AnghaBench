
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA2Init (int ,int *) ;
 int SHA512 ;

void
SHA512Init(SHA512_CTX *ctx)
{
 SHA2Init(SHA512, ctx);
}
