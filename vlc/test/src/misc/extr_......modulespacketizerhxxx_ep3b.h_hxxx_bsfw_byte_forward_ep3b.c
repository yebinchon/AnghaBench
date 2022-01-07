
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hxxx_bsfw_ep3b_ctx_s {int i_bytepos; int i_prev; int i_bytesize; } ;
struct TYPE_3__ {int * p_end; int * p; int * p_start; scalar_t__ p_priv; } ;
typedef TYPE_1__ bs_t ;


 int * hxxx_ep3b_to_rbsp (int *,int *,int *,size_t) ;
 int hxxx_ep3b_total_size (int *,int *) ;

__attribute__((used)) static size_t hxxx_bsfw_byte_forward_ep3b( bs_t *s, size_t i_count )
{
    struct hxxx_bsfw_ep3b_ctx_s *ctx = (struct hxxx_bsfw_ep3b_ctx_s *) s->p_priv;
    if( s->p == ((void*)0) )
    {
        ctx->i_bytesize = hxxx_ep3b_total_size( s->p_start, s->p_end );
        s->p = s->p_start;
        ctx->i_bytepos = 1;
        return 1;
    }

    if( s->p >= s->p_end )
        return 0;

    s->p = hxxx_ep3b_to_rbsp( s->p, s->p_end, &ctx->i_prev, i_count );
    ctx->i_bytepos += i_count;
    return i_count;
}
