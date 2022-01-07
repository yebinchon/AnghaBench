
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ const* p_head; scalar_t__* p_tail; } ;
typedef TYPE_1__ hxxx_iterator_ctx_t ;


 int hxxx_strip_AnnexB_startcode (scalar_t__ const**,size_t*) ;
 void* startcode_FindAnnexB (scalar_t__ const*,scalar_t__*) ;

__attribute__((used)) static inline bool hxxx_annexb_iterate_next( hxxx_iterator_ctx_t *p_ctx, const uint8_t **pp_start, size_t *pi_size )
{
    if( !p_ctx->p_head )
        return 0;

    p_ctx->p_head = startcode_FindAnnexB( p_ctx->p_head, p_ctx->p_tail );
    if( !p_ctx->p_head )
        return 0;

    const uint8_t *p_end = startcode_FindAnnexB( p_ctx->p_head + 3, p_ctx->p_tail );
    if( !p_end )
        p_end = p_ctx->p_tail;


    while( p_end > p_ctx->p_head && p_end[-1] == 0 )
        p_end--;

    *pp_start = p_ctx->p_head;
    *pi_size = p_end - p_ctx->p_head;
    p_ctx->p_head = p_end;

    return hxxx_strip_AnnexB_startcode( pp_start, pi_size );
}
