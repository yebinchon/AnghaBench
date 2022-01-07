
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256 ;
 int SHA2Init (int ,int *) ;

void
SHA256Init(SHA256_CTX *ctx)
{
 SHA2Init(SHA256, ctx);
}
