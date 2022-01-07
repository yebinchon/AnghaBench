
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int decoder_cc_desc_t ;
typedef int block_t ;


 int block_Release (int *) ;

__attribute__((used)) static void queue_cc(decoder_t *dec, block_t *p_block, const decoder_cc_desc_t *desc)
{
    (void) dec; (void) desc;
    block_Release(p_block);
}
