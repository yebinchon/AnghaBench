
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_fast32_t ;
typedef int uint8_t ;
struct TYPE_6__ {int i_buffer; int i_flags; int i_dts; int i_pts; int * p_buffer; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_TYPE_P ;
 void* CC_PKT_BYTE0 (int ) ;
 int GetDWBE (int *) ;
 int SSIZE_MAX ;
 int assert (int) ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static block_t * MP4_EIA608_Convert( block_t * p_block )
{

    block_t *p_newblock = ((void*)0);

    assert(p_block->i_buffer <= SSIZE_MAX);

    if (p_block->i_buffer < 8)
        goto out;

    uint_fast32_t cdat_size = GetDWBE(p_block->p_buffer) - 8;
    if (cdat_size > p_block->i_buffer)
        goto out;

    const uint8_t *cdat = p_block->p_buffer + 8;
    if (memcmp(cdat - 4, "cdat", 4) != 0)
        goto out;

    p_block->p_buffer += cdat_size;
    p_block->i_buffer -= cdat_size;
    cdat_size &= ~1;


    uint_fast32_t cdt2_size = 0;
    const uint8_t *cdt2;

    if (p_block->i_buffer >= 8) {
        size_t size = GetDWBE(p_block->p_buffer) - 8;

        if (size <= p_block->i_buffer) {
            cdt2 = p_block->p_buffer + 8;

            if (memcmp(cdt2 - 4, "cdt2", 4) == 0)
                cdt2_size = size & ~1;
        }
    }

    p_newblock = block_Alloc((cdat_size + cdt2_size) / 2 * 3);
    if (unlikely(p_newblock == ((void*)0)))
        goto out;

    uint8_t *out = p_newblock->p_buffer;

    while (cdat_size > 0) {
         *(out++) = CC_PKT_BYTE0(0);
         *(out++) = *(cdat++);
         *(out++) = *(cdat++);
         cdat_size -= 2;
    }

    while (cdt2_size > 0) {
         *(out++) = CC_PKT_BYTE0(0);
         *(out++) = *(cdt2++);
         *(out++) = *(cdt2++);
         cdt2_size -= 2;
    }

    p_newblock->i_pts = p_block->i_dts;
    p_newblock->i_flags = BLOCK_FLAG_TYPE_P;
out:
    block_Release( p_block );
    return p_newblock;
}
