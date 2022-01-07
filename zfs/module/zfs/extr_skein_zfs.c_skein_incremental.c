
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Skein_512_Ctxt_t ;


 int Skein_512_Update (int *,void*,size_t) ;

__attribute__((used)) static int
skein_incremental(void *buf, size_t size, void *arg)
{
 Skein_512_Ctxt_t *ctx = arg;
 (void) Skein_512_Update(ctx, buf, size);
 return (0);
}
