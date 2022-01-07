
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
struct hevc_dcr_params {size_t i_vps_count; size_t* rgi_vps; size_t i_sps_count; size_t* rgi_sps; size_t i_pps_count; size_t* rgi_pps; size_t i_seipref_count; size_t* rgi_seipref; size_t i_seisuff_count; size_t* rgi_seisuff; int const** p_seisuff; int const** p_seipref; int const** p_pps; int const** p_sps; int const** p_vps; } ;
typedef int hxxx_iterator_ctx_t ;
typedef int bo_t ;


 size_t HEVC_DCR_PPS_COUNT ;
 size_t HEVC_DCR_SEI_COUNT ;
 size_t HEVC_DCR_SPS_COUNT ;
 size_t HEVC_DCR_VPS_COUNT ;





 int bo_add_mem (int *,size_t,int const*) ;
 int bo_free (int *) ;
 int * box_new (char*) ;
 int free (int const*) ;
 int const* hevc_create_dcr (struct hevc_dcr_params*,int,int,size_t*) ;
 int hevc_getNALType (int const*) ;
 scalar_t__ hevc_ishvcC (int const*,size_t) ;
 scalar_t__ hxxx_annexb_iterate_next (int *,int const**,size_t*) ;
 int hxxx_iterator_init (int *,int const*,size_t,int ) ;

__attribute__((used)) static bo_t *GetHvcCTag(const uint8_t *p_extra, size_t i_extra,
                        bool b_completeness)
{


    bo_t *hvcC = box_new("hvcC");
    if(!hvcC || !i_extra)
        return hvcC;


    if(hevc_ishvcC(p_extra, i_extra))
    {
        (void) bo_add_mem(hvcC, i_extra, p_extra);
        return hvcC;
    }

    struct hevc_dcr_params params = { };
    const uint8_t *p_nal;
    size_t i_nal;

    hxxx_iterator_ctx_t it;
    hxxx_iterator_init(&it, p_extra, i_extra, 0);
    while(hxxx_annexb_iterate_next(&it, &p_nal, &i_nal))
    {
        switch (hevc_getNALType(p_nal))
        {
            case 128:
                if(params.i_vps_count != HEVC_DCR_VPS_COUNT)
                {
                    params.p_vps[params.i_vps_count] = p_nal;
                    params.rgi_vps[params.i_vps_count] = i_nal;
                    params.i_vps_count++;
                }
                break;
            case 130:
                if(params.i_sps_count != HEVC_DCR_SPS_COUNT)
                {
                    params.p_sps[params.i_sps_count] = p_nal;
                    params.rgi_sps[params.i_sps_count] = i_nal;
                    params.i_sps_count++;
                }
                break;
            case 132:
                if(params.i_pps_count != HEVC_DCR_PPS_COUNT)
                {
                    params.p_pps[params.i_pps_count] = p_nal;
                    params.rgi_pps[params.i_pps_count] = i_nal;
                    params.i_pps_count++;
                }
                break;
            case 131:
                if(params.i_seipref_count != HEVC_DCR_SEI_COUNT)
                {
                    params.p_seipref[params.i_seipref_count] = p_nal;
                    params.rgi_seipref[params.i_seipref_count] = i_nal;
                    params.i_seipref_count++;
                }
                break;
            case 129:
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
    uint8_t *p_dcr = hevc_create_dcr(&params, 4, b_completeness, &i_dcr);
    if(!p_dcr)
    {
        bo_free(hvcC);
        return ((void*)0);
    }

    bo_add_mem(hvcC, i_dcr, p_dcr);
    free(p_dcr);

    return hvcC;
}
