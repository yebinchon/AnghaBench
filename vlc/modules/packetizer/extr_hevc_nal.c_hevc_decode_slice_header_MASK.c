#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct hxxx_bsfw_ep3b_ctx_s {int dummy; } ;
typedef  int /*<<< orphan*/  pf_get_matchedxps ;
struct TYPE_7__ {int nuh_layer_id; void* temporal_id_plus1; void* nal_type; } ;
typedef  TYPE_1__ hevc_slice_segment_header_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,struct hxxx_bsfw_ep3b_ctx_s*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  hxxx_bsfw_ep3b_callbacks ; 
 int /*<<< orphan*/  FUNC7 (struct hxxx_bsfw_ep3b_ctx_s*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

hevc_slice_segment_header_t * FUNC9( const uint8_t *p_buf, size_t i_buf, bool b_escaped,
                                                        pf_get_matchedxps get_matchedxps, void *priv )
{
    hevc_slice_segment_header_t *p_sh = FUNC4(1, sizeof(hevc_slice_segment_header_t));
    if(FUNC8(p_sh))
    {
        bs_t bs;
        struct hxxx_bsfw_ep3b_ctx_s bsctx;
        if( b_escaped )
        {
            FUNC7( &bsctx );
            FUNC1( &bs, p_buf, i_buf, &hxxx_bsfw_ep3b_callbacks, &bsctx );
        }
        else FUNC0( &bs, p_buf, i_buf );
        FUNC3( &bs, 1 );
        p_sh->nal_type = FUNC2( &bs, 6 );
        p_sh->nuh_layer_id = FUNC2( &bs, 6 );
        p_sh->temporal_id_plus1 = FUNC2( &bs, 3 );
        if( p_sh->nuh_layer_id > 62 || p_sh->temporal_id_plus1 == 0 ||
           !FUNC5( &bs, get_matchedxps, priv, p_sh ) )
        {
            FUNC6( p_sh );
            p_sh = NULL;
        }
    }
    return p_sh;
}