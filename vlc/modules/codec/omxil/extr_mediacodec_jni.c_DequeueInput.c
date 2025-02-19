
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_7__ {int codec; } ;
typedef TYPE_1__ mc_api_sys ;
struct TYPE_8__ {int p_obj; TYPE_1__* p_sys; } ;
typedef TYPE_2__ mc_api ;
struct TYPE_10__ {int dequeue_input_buffer; } ;
struct TYPE_9__ {int (* CallIntMethod ) (TYPE_3__**,int ,int ,int ) ;} ;
typedef TYPE_3__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 int GET_ENV () ;
 int MC_API_ERROR ;
 int MC_API_INFO_TRYAGAIN ;
 TYPE_5__ jfields ;
 int msg_Err (int ,char*) ;
 int stub1 (TYPE_3__**,int ,int ,int ) ;

__attribute__((used)) static int DequeueInput(mc_api *api, vlc_tick_t i_timeout)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;
    int i_index;

    GET_ENV();

    i_index = (*env)->CallIntMethod(env, p_sys->codec,
                                    jfields.dequeue_input_buffer, i_timeout);
    if (CHECK_EXCEPTION())
    {
        msg_Err(api->p_obj, "Exception occurred in MediaCodec.dequeueInputBuffer");
        return MC_API_ERROR;
    }
    if (i_index >= 0)
        return i_index;
    else
        return MC_API_INFO_TRYAGAIN;

}
