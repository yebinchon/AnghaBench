
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct hxxx_bsfw_ep3b_ctx_s {int dummy; } ;
typedef int pf_get_matchedxps ;
struct TYPE_7__ {int nuh_layer_id; void* temporal_id_plus1; void* nal_type; } ;
typedef TYPE_1__ hevc_slice_segment_header_t ;
typedef int bs_t ;


 int bs_init (int *,int const*,size_t) ;
 int bs_init_custom (int *,int const*,size_t,int *,struct hxxx_bsfw_ep3b_ctx_s*) ;
 void* bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 TYPE_1__* calloc (int,int) ;
 int hevc_parse_slice_segment_header_rbsp (int *,int ,void*,TYPE_1__*) ;
 int hevc_rbsp_release_slice_header (TYPE_1__*) ;
 int hxxx_bsfw_ep3b_callbacks ;
 int hxxx_bsfw_ep3b_ctx_init (struct hxxx_bsfw_ep3b_ctx_s*) ;
 scalar_t__ likely (TYPE_1__*) ;

hevc_slice_segment_header_t * hevc_decode_slice_header( const uint8_t *p_buf, size_t i_buf, bool b_escaped,
                                                        pf_get_matchedxps get_matchedxps, void *priv )
{
    hevc_slice_segment_header_t *p_sh = calloc(1, sizeof(hevc_slice_segment_header_t));
    if(likely(p_sh))
    {
        bs_t bs;
        struct hxxx_bsfw_ep3b_ctx_s bsctx;
        if( b_escaped )
        {
            hxxx_bsfw_ep3b_ctx_init( &bsctx );
            bs_init_custom( &bs, p_buf, i_buf, &hxxx_bsfw_ep3b_callbacks, &bsctx );
        }
        else bs_init( &bs, p_buf, i_buf );
        bs_skip( &bs, 1 );
        p_sh->nal_type = bs_read( &bs, 6 );
        p_sh->nuh_layer_id = bs_read( &bs, 6 );
        p_sh->temporal_id_plus1 = bs_read( &bs, 3 );
        if( p_sh->nuh_layer_id > 62 || p_sh->temporal_id_plus1 == 0 ||
           !hevc_parse_slice_segment_header_rbsp( &bs, get_matchedxps, priv, p_sh ) )
        {
            hevc_rbsp_release_slice_header( p_sh );
            p_sh = ((void*)0);
        }
    }
    return p_sh;
}
