
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fz_jbig2_alloc_s {int * ctx; } ;
typedef int fz_context ;
typedef int Jbig2Allocator ;


 void* fz_malloc_no_throw (int *,size_t) ;

__attribute__((used)) static void *fz_jbig2_alloc(Jbig2Allocator *allocator, size_t size)
{
 fz_context *ctx = ((struct fz_jbig2_alloc_s *) allocator)->ctx;
 return fz_malloc_no_throw(ctx, size);
}
