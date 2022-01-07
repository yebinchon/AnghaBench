
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int codec; } ;
typedef TYPE_1__ mc_api_sys ;
struct TYPE_8__ {int p_obj; TYPE_1__* p_sys; } ;
typedef TYPE_2__ mc_api ;
struct TYPE_10__ {int flush; } ;
struct TYPE_9__ {int (* CallVoidMethod ) (TYPE_3__**,int ,int ) ;} ;
typedef TYPE_3__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 int GET_ENV () ;
 int MC_API_ERROR ;
 TYPE_5__ jfields ;
 int msg_Warn (int ,char*) ;
 int stub1 (TYPE_3__**,int ,int ) ;

__attribute__((used)) static int Flush(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env = ((void*)0);

    GET_ENV();

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.flush);
    if (CHECK_EXCEPTION())
    {
        msg_Warn(api->p_obj, "Exception occurred in MediaCodec.flush");
        return MC_API_ERROR;
    }
    return 0;
}
