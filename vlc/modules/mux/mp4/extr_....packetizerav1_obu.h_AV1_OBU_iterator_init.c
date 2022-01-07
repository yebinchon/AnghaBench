
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int const* p_tail; int const* p_head; } ;
typedef TYPE_1__ AV1_OBU_iterator_ctx_t ;



__attribute__((used)) static inline void AV1_OBU_iterator_init(AV1_OBU_iterator_ctx_t *p_ctx,
                                         const uint8_t *p_data, size_t i_data)
{
    p_ctx->p_head = p_data;
    p_ctx->p_tail = p_data + i_data;
}
