#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct hevc_dcr_params {size_t i_vps_count; size_t* rgi_vps; size_t i_sps_count; size_t* rgi_sps; size_t i_pps_count; size_t* rgi_pps; size_t i_seipref_count; size_t* rgi_seipref; size_t i_seisuff_count; size_t* rgi_seisuff; int /*<<< orphan*/  const** p_seisuff; int /*<<< orphan*/  const** p_seipref; int /*<<< orphan*/  const** p_pps; int /*<<< orphan*/  const** p_sps; int /*<<< orphan*/  const** p_vps; } ;
typedef  int /*<<< orphan*/  hxxx_iterator_ctx_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 size_t HEVC_DCR_PPS_COUNT ; 
 size_t HEVC_DCR_SEI_COUNT ; 
 size_t HEVC_DCR_SPS_COUNT ; 
 size_t HEVC_DCR_VPS_COUNT ; 
#define  HEVC_NAL_PPS 132 
#define  HEVC_NAL_PREF_SEI 131 
#define  HEVC_NAL_SPS 130 
#define  HEVC_NAL_SUFF_SEI 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 (struct hevc_dcr_params*,int,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bo_t *FUNC9(const uint8_t *p_extra, size_t i_extra,
                        bool b_completeness)
{

    /* Generate hvcC box matching iso/iec 14496-15 3rd edition */
    bo_t *hvcC = FUNC2("hvcC");
    if(!hvcC || !i_extra)
        return hvcC;

    /* Extradata is already an HEVCDecoderConfigurationRecord */
    if(FUNC6(p_extra, i_extra))
    {
        (void) FUNC0(hvcC, i_extra, p_extra);
        return hvcC;
    }

    struct hevc_dcr_params params = { };
    const uint8_t *p_nal;
    size_t i_nal;

    hxxx_iterator_ctx_t it;
    FUNC8(&it, p_extra, i_extra, 0);
    while(FUNC7(&it, &p_nal, &i_nal))
    {
        switch (FUNC5(p_nal))
        {
            case HEVC_NAL_VPS:
                if(params.i_vps_count != HEVC_DCR_VPS_COUNT)
                {
                    params.p_vps[params.i_vps_count] = p_nal;
                    params.rgi_vps[params.i_vps_count] = i_nal;
                    params.i_vps_count++;
                }
                break;
            case HEVC_NAL_SPS:
                if(params.i_sps_count != HEVC_DCR_SPS_COUNT)
                {
                    params.p_sps[params.i_sps_count] = p_nal;
                    params.rgi_sps[params.i_sps_count] = i_nal;
                    params.i_sps_count++;
                }
                break;
            case HEVC_NAL_PPS:
                if(params.i_pps_count != HEVC_DCR_PPS_COUNT)
                {
                    params.p_pps[params.i_pps_count] = p_nal;
                    params.rgi_pps[params.i_pps_count] = i_nal;
                    params.i_pps_count++;
                }
                break;
            case HEVC_NAL_PREF_SEI:
                if(params.i_seipref_count != HEVC_DCR_SEI_COUNT)
                {
                    params.p_seipref[params.i_seipref_count] = p_nal;
                    params.rgi_seipref[params.i_seipref_count] = i_nal;
                    params.i_seipref_count++;
                }
                break;
            case HEVC_NAL_SUFF_SEI:
                if(params.i_seisuff_count != HEVC_DCR_SEI_COUNT)
                {
                    params.p_seisuff[params.i_seisuff_count] = p_nal;
                    params.rgi_seisuff[params.i_seisuff_count] = i_nal;
                    params.i_seisuff_count++;
                }
                break;

            default:
                break;
        }
    }

    size_t i_dcr;
    uint8_t *p_dcr = FUNC4(&params, 4, b_completeness, &i_dcr);
    if(!p_dcr)
    {
        FUNC1(hvcC);
        return NULL;
    }

    FUNC0(hvcC, i_dcr, p_dcr);
    FUNC3(p_dcr);

    return hvcC;
}