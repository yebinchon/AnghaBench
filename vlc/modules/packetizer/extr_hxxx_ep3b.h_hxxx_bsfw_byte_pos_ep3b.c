
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hxxx_bsfw_ep3b_ctx_s {size_t i_bytepos; } ;
struct TYPE_3__ {scalar_t__ p_priv; } ;
typedef TYPE_1__ bs_t ;



__attribute__((used)) static size_t hxxx_bsfw_byte_pos_ep3b( const bs_t *s )
{
    struct hxxx_bsfw_ep3b_ctx_s *ctx = (struct hxxx_bsfw_ep3b_ctx_s *) s->p_priv;
    return ctx->i_bytepos;
}
