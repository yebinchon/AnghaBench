
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opj_tcd_pass_t ;
typedef int opj_tcd_layer_t ;
struct TYPE_3__ {int * passes; int * layers; } ;
typedef TYPE_1__ opj_tcd_cblk_enc_t ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ opj_calloc (int,int) ;

__attribute__((used)) static OPJ_BOOL opj_tcd_code_block_enc_allocate(opj_tcd_cblk_enc_t *
        p_code_block)
{
    if (! p_code_block->layers) {

        p_code_block->layers = (opj_tcd_layer_t*) opj_calloc(100,
                               sizeof(opj_tcd_layer_t));
        if (! p_code_block->layers) {
            return OPJ_FALSE;
        }
    }
    if (! p_code_block->passes) {
        p_code_block->passes = (opj_tcd_pass_t*) opj_calloc(100,
                               sizeof(opj_tcd_pass_t));
        if (! p_code_block->passes) {
            return OPJ_FALSE;
        }
    }
    return OPJ_TRUE;
}
