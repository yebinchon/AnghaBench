
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct hevc_tuple_s {void* p_decoded; TYPE_5__* p_nal; } ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int p_active_pps; struct hevc_tuple_s* rg_pps; int p_active_sps; struct hevc_tuple_s* rg_sps; int p_active_vps; struct hevc_tuple_s* rg_vps; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int* p_buffer; size_t i_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_13__ {int* p_buffer; size_t i_buffer; } ;





 int HEVC_PPS_ID_MAX ;
 int HEVC_SPS_ID_MAX ;
 int HEVC_VPS_ID_MAX ;
 TYPE_5__* block_Duplicate (TYPE_3__*) ;
 int block_Release (TYPE_5__*) ;
 void* hevc_decode_pps (int const*,size_t,int) ;
 void* hevc_decode_sps (int const*,size_t,int) ;
 void* hevc_decode_vps (int const*,size_t,int) ;
 int hevc_rbsp_release_pps (void*) ;
 int hevc_rbsp_release_sps (void*) ;
 int hevc_rbsp_release_vps (void*) ;
 scalar_t__ hxxx_strip_AnnexB_startcode (int const**,size_t*) ;
 int memcmp (int const*,int const*,size_t) ;
 int msg_Err (TYPE_1__*,char*,int) ;

__attribute__((used)) static bool InsertXPS(decoder_t *p_dec, uint8_t i_nal_type, uint8_t i_id,
                      const block_t *p_nalb)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    struct hevc_tuple_s *p_tuple;
    void **pp_active;

    switch(i_nal_type)
    {
        case 128:
            if(i_id > HEVC_VPS_ID_MAX)
                return 0;
            p_tuple = &p_sys->rg_vps[i_id];
            pp_active = (void**)&p_sys->p_active_vps;
            break;
        case 129:
            if(i_id > HEVC_SPS_ID_MAX)
                return 0;
            p_tuple = &p_sys->rg_sps[i_id];
            pp_active = (void**)&p_sys->p_active_sps;
            break;
        case 130:
            if(i_id > HEVC_PPS_ID_MAX)
                return 0;
            p_tuple = &p_sys->rg_pps[i_id];
            pp_active = (void**)&p_sys->p_active_pps;
            break;
        default:
            return 0;
    }


    if(p_tuple->p_nal)
    {
        const uint8_t *p_stored = p_tuple->p_nal->p_buffer;
        size_t i_stored = p_tuple->p_nal->i_buffer;
        hxxx_strip_AnnexB_startcode(&p_stored, &i_stored);
        const uint8_t *p_new = p_nalb->p_buffer;
        size_t i_new = p_nalb->i_buffer;
        hxxx_strip_AnnexB_startcode(&p_new, &i_new);
        if(i_stored == i_new && !memcmp(p_stored, p_new, i_new))
            return 1;
    }


    if(p_tuple->p_decoded)
    {
        switch(i_nal_type)
        {
            case 128:
                hevc_rbsp_release_vps(p_tuple->p_decoded);
                break;
            case 129:
                hevc_rbsp_release_sps(p_tuple->p_decoded);
                break;
            case 130:
                hevc_rbsp_release_pps(p_tuple->p_decoded);
                break;
        }
        if(*pp_active == p_tuple->p_decoded)
            *pp_active = ((void*)0);
        else
            pp_active = ((void*)0);
        p_tuple->p_decoded = ((void*)0);
    }
    else pp_active = ((void*)0);


    if(p_tuple->p_nal)
    {
        block_Release(p_tuple->p_nal);
        p_tuple->p_nal = ((void*)0);
    }

    const uint8_t *p_buffer = p_nalb->p_buffer;
    size_t i_buffer = p_nalb->i_buffer;
    if( hxxx_strip_AnnexB_startcode( &p_buffer, &i_buffer ) )
    {

        switch(i_nal_type)
        {
            case 129:
                p_tuple->p_decoded = hevc_decode_sps(p_buffer, i_buffer, 1);
                if(!p_tuple->p_decoded)
                {
                    msg_Err(p_dec, "Failed decoding SPS id %d", i_id);
                    return 0;
                }
                break;
            case 130:
                p_tuple->p_decoded = hevc_decode_pps(p_buffer, i_buffer, 1);
                if(!p_tuple->p_decoded)
                {
                    msg_Err(p_dec, "Failed decoding PPS id %d", i_id);
                    return 0;
                }
                break;
            case 128:
                p_tuple->p_decoded = hevc_decode_vps(p_buffer, i_buffer, 1);
                if(!p_tuple->p_decoded)
                {
                    msg_Err(p_dec, "Failed decoding VPS id %d", i_id);
                    return 0;
                }
                break;
        }

        if(p_tuple->p_decoded && pp_active)
            *pp_active = p_tuple->p_decoded;

        p_tuple->p_nal = block_Duplicate((block_t *)p_nalb);

        return 1;
    }

    return 0;
}
