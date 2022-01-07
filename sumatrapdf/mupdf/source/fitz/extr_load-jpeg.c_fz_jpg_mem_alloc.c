
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;
typedef int fz_context ;


 int * JZ_CTX_FROM_CINFO (int ) ;
 void* fz_malloc_no_throw (int *,size_t) ;

__attribute__((used)) static void *
fz_jpg_mem_alloc(j_common_ptr cinfo, size_t size)
{
 fz_context *ctx = JZ_CTX_FROM_CINFO(cinfo);
 return fz_malloc_no_throw(ctx, size);
}
