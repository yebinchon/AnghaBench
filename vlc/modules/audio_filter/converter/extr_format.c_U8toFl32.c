
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int filter_t ;
struct TYPE_8__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;
 TYPE_1__* block_Alloc (int) ;
 int block_CopyProperties (TYPE_1__*,TYPE_1__*) ;
 int block_Release (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static block_t *U8toFl32(filter_t *filter, block_t *bsrc)
{
    block_t *bdst = block_Alloc(bsrc->i_buffer * 4);
    if (unlikely(bdst == ((void*)0)))
        goto out;

    block_CopyProperties(bdst, bsrc);
    uint8_t *src = (uint8_t *)bsrc->p_buffer;
    float *dst = (float *)bdst->p_buffer;
    for (size_t i = bsrc->i_buffer; i--;)
        *dst++ = ((float)((*src++) - 128)) / 128.f;
out:
    block_Release(bsrc);
    VLC_UNUSED(filter);
    return bdst;
}
