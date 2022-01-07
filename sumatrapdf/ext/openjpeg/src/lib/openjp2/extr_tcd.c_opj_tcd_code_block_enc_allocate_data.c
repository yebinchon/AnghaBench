
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x0; int y1; int y0; scalar_t__ data_size; scalar_t__* data; } ;
typedef TYPE_1__ opj_tcd_cblk_enc_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_INT32 ;
typedef scalar_t__ OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_free (scalar_t__*) ;
 scalar_t__ opj_malloc (scalar_t__) ;

__attribute__((used)) static OPJ_BOOL opj_tcd_code_block_enc_allocate_data(opj_tcd_cblk_enc_t *
        p_code_block)
{
    OPJ_UINT32 l_data_size;





    l_data_size = 2 + (OPJ_UINT32)((p_code_block->x1 - p_code_block->x0) *
                                   (p_code_block->y1 - p_code_block->y0) * (OPJ_INT32)sizeof(OPJ_UINT32));

    if (l_data_size > p_code_block->data_size) {
        if (p_code_block->data) {

            opj_free(p_code_block->data - 1);
        }
        p_code_block->data = (OPJ_BYTE*) opj_malloc(l_data_size + 1);
        if (! p_code_block->data) {
            p_code_block->data_size = 0U;
            return OPJ_FALSE;
        }
        p_code_block->data_size = l_data_size;





        p_code_block->data[0] = 0;
        p_code_block->data += 1;
    }
    return OPJ_TRUE;
}
