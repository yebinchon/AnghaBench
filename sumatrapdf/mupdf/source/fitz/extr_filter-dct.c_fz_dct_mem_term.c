
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_decompress_struct {int * client_data; } ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ fz_dctd ;


 TYPE_1__* JZ_DCT_STATE_FROM_CINFO (struct jpeg_decompress_struct*) ;
 int fz_free (int ,int *) ;

__attribute__((used)) static void
fz_dct_mem_term(struct jpeg_decompress_struct *cinfo)
{
 if (cinfo->client_data)
 {
  fz_dctd *state = JZ_DCT_STATE_FROM_CINFO(cinfo);
  fz_free(state->ctx, cinfo->client_data);
  cinfo->client_data = ((void*)0);
 }
}
