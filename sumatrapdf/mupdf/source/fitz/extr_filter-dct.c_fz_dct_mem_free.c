
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int j_common_ptr ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ fz_dctd ;


 TYPE_1__* JZ_DCT_STATE_FROM_CINFO (int ) ;
 int fz_free (int ,void*) ;

__attribute__((used)) static void
fz_dct_mem_free(j_common_ptr cinfo, void *object, size_t size)
{
 fz_dctd *state = JZ_DCT_STATE_FROM_CINFO(cinfo);
 fz_free(state->ctx, object);
}
