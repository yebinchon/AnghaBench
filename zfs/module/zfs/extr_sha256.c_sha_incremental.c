
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA2_CTX ;


 int SHA2Update (int *,void*,size_t) ;

__attribute__((used)) static int
sha_incremental(void *buf, size_t size, void *arg)
{
 SHA2_CTX *ctx = arg;
 SHA2Update(ctx, buf, size);
 return (0);
}
