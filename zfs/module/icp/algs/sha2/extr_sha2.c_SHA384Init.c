
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA384_CTX ;


 int SHA2Init (int ,int *) ;
 int SHA384 ;

void
SHA384Init(SHA384_CTX *ctx)
{
 SHA2Init(SHA384, ctx);
}
