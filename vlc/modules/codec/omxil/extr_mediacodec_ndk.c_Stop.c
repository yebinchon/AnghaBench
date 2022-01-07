
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * p_format; int * p_codec; } ;
typedef TYPE_3__ mc_api_sys ;
struct TYPE_10__ {int b_direct_rendering; int b_started; int p_obj; TYPE_3__* p_sys; } ;
typedef TYPE_4__ mc_api ;
struct TYPE_8__ {int (* delete ) (int *) ;} ;
struct TYPE_7__ {int (* delete ) (int *) ;int (* stop ) (int *) ;} ;
struct TYPE_11__ {TYPE_2__ AMediaFormat; TYPE_1__ AMediaCodec; } ;


 int msg_Dbg (int ,char*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 TYPE_5__ syms ;

__attribute__((used)) static int Stop(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;

    api->b_direct_rendering = 0;

    if (p_sys->p_codec)
    {
        if (api->b_started)
        {
            syms.AMediaCodec.stop(p_sys->p_codec);
            api->b_started = 0;
        }
        syms.AMediaCodec.delete(p_sys->p_codec);
        p_sys->p_codec = ((void*)0);
    }
    if (p_sys->p_format)
    {
        syms.AMediaFormat.delete(p_sys->p_format);
        p_sys->p_format = ((void*)0);
    }

    msg_Dbg(api->p_obj, "MediaCodec via NDK closed");
    return 0;
}
