
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct test_es_out_t {int dummy; } ;
typedef int es_out_t ;
struct TYPE_4__ {scalar_t__ decoder; } ;
typedef TYPE_1__ es_out_id_t ;
typedef int block_t ;


 int EsOutCheckId (struct test_es_out_t*,TYPE_1__*) ;
 int VLC_SUCCESS ;
 int block_Release (int *) ;
 int test_decoder_process (scalar_t__,int *) ;

__attribute__((used)) static int EsOutSend(es_out_t *out, es_out_id_t *id, block_t *block)
{
    struct test_es_out_t *ctx = (struct test_es_out_t *) out;


    EsOutCheckId(ctx, id);





        block_Release(block);
    return VLC_SUCCESS;
}
