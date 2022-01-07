
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_16__ {TYPE_8__* p_sys; } ;
typedef TYPE_7__ decoder_t ;
struct TYPE_12__ {int p_chain; } ;
struct TYPE_11__ {int p_chain; } ;
struct TYPE_10__ {int p_chain; } ;
struct TYPE_17__ {int p_ccs; int p_timing; TYPE_6__* rg_vps; TYPE_5__* rg_sps; TYPE_4__* rg_pps; TYPE_3__ post; TYPE_2__ pre; TYPE_1__ frame; int packetizer; } ;
typedef TYPE_8__ decoder_sys_t ;
struct TYPE_15__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;
struct TYPE_14__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;
struct TYPE_13__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;


 unsigned int HEVC_PPS_ID_MAX ;
 unsigned int HEVC_SPS_ID_MAX ;
 unsigned int HEVC_VPS_ID_MAX ;
 int block_ChainRelease (int ) ;
 int block_Release (scalar_t__) ;
 int cc_storage_delete (int ) ;
 int free (TYPE_8__*) ;
 int hevc_rbsp_release_pps (scalar_t__) ;
 int hevc_rbsp_release_sps (scalar_t__) ;
 int hevc_rbsp_release_vps (scalar_t__) ;
 int hevc_release_sei_pic_timing (int ) ;
 int packetizer_Clean (int *) ;

__attribute__((used)) static void Close(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    packetizer_Clean(&p_sys->packetizer);

    block_ChainRelease(p_sys->frame.p_chain);
    block_ChainRelease(p_sys->pre.p_chain);
    block_ChainRelease(p_sys->post.p_chain);

    for(unsigned i=0;i<=HEVC_PPS_ID_MAX; i++)
    {
        if(p_sys->rg_pps[i].p_decoded)
            hevc_rbsp_release_pps(p_sys->rg_pps[i].p_decoded);
        if(p_sys->rg_pps[i].p_nal)
            block_Release(p_sys->rg_pps[i].p_nal);
    }

    for(unsigned i=0;i<=HEVC_SPS_ID_MAX; i++)
    {
        if(p_sys->rg_sps[i].p_decoded)
            hevc_rbsp_release_sps(p_sys->rg_sps[i].p_decoded);
        if(p_sys->rg_sps[i].p_nal)
            block_Release(p_sys->rg_sps[i].p_nal);
    }

    for(unsigned i=0;i<=HEVC_VPS_ID_MAX; i++)
    {
        if(p_sys->rg_vps[i].p_decoded)
            hevc_rbsp_release_vps(p_sys->rg_vps[i].p_decoded);
        if(p_sys->rg_vps[i].p_nal)
            block_Release(p_sys->rg_vps[i].p_nal);
    }

    hevc_release_sei_pic_timing( p_sys->p_timing );

    cc_storage_delete( p_sys->p_ccs );

    free(p_sys);
}
