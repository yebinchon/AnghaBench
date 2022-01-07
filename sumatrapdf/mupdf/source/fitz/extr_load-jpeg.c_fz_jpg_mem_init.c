
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* j_common_ptr ;
typedef int fz_context ;
struct TYPE_3__ {int client_data; } ;


 int FZ_ERROR_GENERIC ;
 int custmptr ;
 int fz_free (int *,int) ;
 int fz_jpg_mem_alloc ;
 int fz_jpg_mem_free ;
 int fz_malloc_struct (int *,int) ;
 int fz_throw (int *,int ,char*) ;
 int jpeg_cust_mem_data ;
 int jpeg_cust_mem_init (int,void*,int *,int *,int *,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
fz_jpg_mem_init(j_common_ptr cinfo, fz_context *ctx)
{
 jpeg_cust_mem_data *custmptr;
 custmptr = fz_malloc_struct(ctx, jpeg_cust_mem_data);
 if (!jpeg_cust_mem_init(custmptr, (void *) ctx, ((void*)0), ((void*)0), ((void*)0),
    fz_jpg_mem_alloc, fz_jpg_mem_free,
    fz_jpg_mem_alloc, fz_jpg_mem_free, ((void*)0)))
 {
  fz_free(ctx, custmptr);
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot initialize custom JPEG memory handler");
 }
 cinfo->client_data = custmptr;
}
