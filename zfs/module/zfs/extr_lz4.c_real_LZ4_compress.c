
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refTables {int dummy; } ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int LZ4_64KLIMIT ;
 int LZ4_compress64kCtx (void*,char const*,char*,int,int) ;
 int LZ4_compressCtx (void*,char const*,char*,int,int) ;
 void* kmem_cache_alloc (int *,int ) ;
 int kmem_cache_free (int *,void*) ;
 int * lz4_cache ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int
real_LZ4_compress(const char *source, char *dest, int isize, int osize)
{
 void *ctx;
 int result;

 ASSERT(lz4_cache != ((void*)0));
 ctx = kmem_cache_alloc(lz4_cache, KM_SLEEP);





 if (ctx == ((void*)0))
  return (0);

 memset(ctx, 0, sizeof (struct refTables));

 if (isize < LZ4_64KLIMIT)
  result = LZ4_compress64kCtx(ctx, source, dest, isize, osize);
 else
  result = LZ4_compressCtx(ctx, source, dest, isize, osize);

 kmem_cache_free(lz4_cache, ctx);
 return (result);
}
