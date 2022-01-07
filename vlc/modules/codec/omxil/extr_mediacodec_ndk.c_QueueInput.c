
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_7__ {int p_codec; } ;
typedef TYPE_2__ mc_api_sys ;
struct TYPE_8__ {int p_obj; TYPE_2__* p_sys; } ;
typedef TYPE_3__ mc_api ;
struct TYPE_6__ {scalar_t__ (* queueInputBuffer ) (int ,int,int ,size_t,int ,int) ;int * (* getInputBuffer ) (int ,int,size_t*) ;} ;
struct TYPE_9__ {TYPE_1__ AMediaCodec; } ;


 int AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM ;
 int AMEDIACODEC_FLAG_CODEC_CONFIG ;
 scalar_t__ AMEDIA_OK ;
 int MC_API_ERROR ;
 int assert (int) ;
 int memcpy (int *,void const*,size_t) ;
 int msg_Err (int ,char*) ;
 int * stub1 (int ,int,size_t*) ;
 scalar_t__ stub2 (int ,int,int ,size_t,int ,int) ;
 TYPE_4__ syms ;

__attribute__((used)) static int QueueInput(mc_api *api, int i_index, const void *p_buf,
                      size_t i_size, vlc_tick_t i_ts, bool b_config)
{
    mc_api_sys *p_sys = api->p_sys;
    uint8_t *p_mc_buf;
    size_t i_mc_size;
    int i_flags = (b_config ? AMEDIACODEC_FLAG_CODEC_CONFIG : 0)
                | (p_buf == ((void*)0) ? AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM : 0);

    assert(i_index >= 0);

    p_mc_buf = syms.AMediaCodec.getInputBuffer(p_sys->p_codec,
                                               i_index, &i_mc_size);
    if (!p_mc_buf)
        return MC_API_ERROR;

    if (i_mc_size > i_size)
        i_mc_size = i_size;
    memcpy(p_mc_buf, p_buf, i_mc_size);

    if (syms.AMediaCodec.queueInputBuffer(p_sys->p_codec, i_index, 0, i_mc_size,
                                          i_ts, i_flags) == AMEDIA_OK)
        return 0;
    else
    {
        msg_Err(api->p_obj, "AMediaCodec.queueInputBuffer failed");
        return MC_API_ERROR;
    }
}
