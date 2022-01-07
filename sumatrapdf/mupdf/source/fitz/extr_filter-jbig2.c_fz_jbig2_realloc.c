
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fz_jbig2_alloc_s {int * ctx; } ;
typedef int fz_context ;
typedef int Jbig2Allocator ;


 int fz_free (int *,void*) ;
 void* fz_malloc (int *,size_t) ;
 void* fz_realloc_no_throw (int *,void*,size_t) ;

__attribute__((used)) static void *fz_jbig2_realloc(Jbig2Allocator *allocator, void *p, size_t size)
{
 fz_context *ctx = ((struct fz_jbig2_alloc_s *) allocator)->ctx;
 if (size == 0)
 {
  fz_free(ctx, p);
  return ((void*)0);
 }
 if (p == ((void*)0))
  return fz_malloc(ctx, size);
 return fz_realloc_no_throw(ctx, p, size);
}
