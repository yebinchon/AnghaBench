
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int j_common_ptr ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ fz_dctd ;


 TYPE_1__* JZ_DCT_STATE_FROM_CINFO (int ) ;
 void* fz_malloc_no_throw (int ,size_t) ;

__attribute__((used)) static void *
fz_dct_mem_alloc(j_common_ptr cinfo, size_t size)
{
 fz_dctd *state = JZ_DCT_STATE_FROM_CINFO(cinfo);
 return fz_malloc_no_throw(state->ctx, size);
}
