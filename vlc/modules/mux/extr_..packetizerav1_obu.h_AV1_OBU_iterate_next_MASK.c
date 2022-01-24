#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int const uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int* p_tail; int* p_head; } ;
typedef  TYPE_1__ AV1_OBU_iterator_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,size_t const) ; 
 int FUNC3 (int*,size_t const,int const*) ; 

__attribute__((used)) static inline bool FUNC4(AV1_OBU_iterator_ctx_t *p_ctx,
                                        const uint8_t **pp_start, size_t *pi_size)
{
    const size_t i_remain = p_ctx->p_tail - p_ctx->p_head;
    if(!FUNC2(p_ctx->p_head, i_remain))
        return false;
    if(!FUNC1(p_ctx->p_head))
    {
        *pp_start = p_ctx->p_head;
        *pi_size = i_remain;
        p_ctx->p_head = p_ctx->p_tail;
        return true;
    }

    uint8_t i_obu_size_len;
    const uint32_t i_obu_size = FUNC3(p_ctx->p_head, i_remain, &i_obu_size_len);
    const size_t i_obu = i_obu_size + i_obu_size_len + !!FUNC0(p_ctx->p_head) + 1;
    if(i_obu_size_len == 0 || i_obu > i_remain)
        return false;
    *pi_size = i_obu;
    *pp_start = p_ctx->p_head;
    p_ctx->p_head += i_obu;
    return true;
}