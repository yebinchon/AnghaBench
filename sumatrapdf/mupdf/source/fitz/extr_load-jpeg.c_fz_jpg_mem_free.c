
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;
typedef int fz_context ;


 int * JZ_CTX_FROM_CINFO (int ) ;
 int fz_free (int *,void*) ;

__attribute__((used)) static void
fz_jpg_mem_free(j_common_ptr cinfo, void *object, size_t size)
{
 fz_context *ctx = JZ_CTX_FROM_CINFO(cinfo);
 fz_free(ctx, object);
}
