
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* p_tail; int* p_head; } ;
typedef TYPE_1__ AV1_OBU_iterator_ctx_t ;


 int AV1_OBUHasExtensionField (int*) ;
 int AV1_OBUHasSizeField (int*) ;
 int AV1_OBUIsValid (int*,size_t const) ;
 int AV1_OBUSize (int*,size_t const,int const*) ;

__attribute__((used)) static inline bool AV1_OBU_iterate_next(AV1_OBU_iterator_ctx_t *p_ctx,
                                        const uint8_t **pp_start, size_t *pi_size)
{
    const size_t i_remain = p_ctx->p_tail - p_ctx->p_head;
    if(!AV1_OBUIsValid(p_ctx->p_head, i_remain))
        return 0;
    if(!AV1_OBUHasSizeField(p_ctx->p_head))
    {
        *pp_start = p_ctx->p_head;
        *pi_size = i_remain;
        p_ctx->p_head = p_ctx->p_tail;
        return 1;
    }

    uint8_t i_obu_size_len;
    const uint32_t i_obu_size = AV1_OBUSize(p_ctx->p_head, i_remain, &i_obu_size_len);
    const size_t i_obu = i_obu_size + i_obu_size_len + !!AV1_OBUHasExtensionField(p_ctx->p_head) + 1;
    if(i_obu_size_len == 0 || i_obu > i_remain)
        return 0;
    *pi_size = i_obu;
    *pp_start = p_ctx->p_head;
    p_ctx->p_head += i_obu;
    return 1;
}
