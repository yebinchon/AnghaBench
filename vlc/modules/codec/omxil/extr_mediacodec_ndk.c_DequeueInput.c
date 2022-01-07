
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_7__ {int p_codec; } ;
typedef TYPE_2__ mc_api_sys ;
struct TYPE_8__ {int p_obj; TYPE_2__* p_sys; } ;
typedef TYPE_3__ mc_api ;
struct TYPE_6__ {scalar_t__ (* dequeueInputBuffer ) (int ,int ) ;} ;
struct TYPE_9__ {TYPE_1__ AMediaCodec; } ;


 scalar_t__ AMEDIACODEC_INFO_TRY_AGAIN_LATER ;
 int MC_API_ERROR ;
 int MC_API_INFO_TRYAGAIN ;
 int msg_Err (int ,char*) ;
 scalar_t__ stub1 (int ,int ) ;
 TYPE_4__ syms ;

__attribute__((used)) static int DequeueInput(mc_api *api, vlc_tick_t i_timeout)
{
    mc_api_sys *p_sys = api->p_sys;
    ssize_t i_index;

    i_index = syms.AMediaCodec.dequeueInputBuffer(p_sys->p_codec, i_timeout);
    if (i_index >= 0)
        return i_index;
    else if (i_index == AMEDIACODEC_INFO_TRY_AGAIN_LATER)
        return MC_API_INFO_TRYAGAIN;
    else
    {
        msg_Err(api->p_obj, "AMediaCodec.dequeueInputBuffer failed");
        return MC_API_ERROR;
    }
}
