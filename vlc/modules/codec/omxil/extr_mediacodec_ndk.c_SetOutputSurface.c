
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p_codec; } ;
typedef TYPE_2__ mc_api_sys ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_3__ mc_api ;
struct TYPE_6__ {scalar_t__ (* setOutputSurface ) (int ,void*) ;} ;
struct TYPE_9__ {TYPE_1__ AMediaCodec; } ;


 scalar_t__ AMEDIA_OK ;
 int MC_API_ERROR ;
 int assert (int ) ;
 scalar_t__ stub1 (int ,void*) ;
 TYPE_4__ syms ;

__attribute__((used)) static int SetOutputSurface(mc_api *api, void *p_surface, void *p_jsurface)
{
    (void) p_jsurface;
    assert(p_surface != ((void*)0));
    mc_api_sys *p_sys = api->p_sys;

    return syms.AMediaCodec.setOutputSurface != ((void*)0)
        && syms.AMediaCodec.setOutputSurface(p_sys->p_codec, p_surface)
        == AMEDIA_OK ? 0 : MC_API_ERROR;
}
