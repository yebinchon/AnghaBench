
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_decompress_struct {int client_data; } ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ fz_dctd ;


 int FZ_ERROR_GENERIC ;
 int custmptr ;
 int fz_dct_mem_alloc ;
 int fz_dct_mem_free ;
 int fz_free (int ,int) ;
 int fz_malloc_struct (int ,int) ;
 int fz_throw (int ,int ,char*) ;
 int jpeg_cust_mem_data ;
 int jpeg_cust_mem_init (int,void*,int *,int *,int *,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
fz_dct_mem_init(struct jpeg_decompress_struct *cinfo, fz_dctd *state)
{
 jpeg_cust_mem_data *custmptr;
 custmptr = fz_malloc_struct(state->ctx, jpeg_cust_mem_data);
 if (!jpeg_cust_mem_init(custmptr, (void *) state, ((void*)0), ((void*)0), ((void*)0),
    fz_dct_mem_alloc, fz_dct_mem_free,
    fz_dct_mem_alloc, fz_dct_mem_free, ((void*)0)))
 {
  fz_free(state->ctx, custmptr);
  fz_throw(state->ctx, FZ_ERROR_GENERIC, "cannot initialize custom JPEG memory handler");
 }
 cinfo->client_data = custmptr;
}
