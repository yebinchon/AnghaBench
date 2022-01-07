
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fz_jbig2_alloc_s {int * ctx; } ;
typedef int fz_context ;
typedef int Jbig2Allocator ;


 int fz_free (int *,void*) ;

__attribute__((used)) static void fz_jbig2_free(Jbig2Allocator *allocator, void *p)
{
 fz_context *ctx = ((struct fz_jbig2_alloc_s *) allocator)->ctx;
 fz_free(ctx, p);
}
