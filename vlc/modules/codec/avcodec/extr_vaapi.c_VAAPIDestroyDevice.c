
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_id; scalar_t__ config_id; int display; } ;
struct TYPE_5__ {TYPE_1__ hw_ctx; } ;
typedef TYPE_2__ vlc_va_sys_t ;


 scalar_t__ VA_INVALID_ID ;
 int free (TYPE_2__*) ;
 int vlc_vaapi_DestroyConfig (int *,int ,scalar_t__) ;
 int vlc_vaapi_DestroyContext (int *,int ,scalar_t__) ;

__attribute__((used)) static void VAAPIDestroyDevice(void *opaque)
{
    vlc_va_sys_t *sys = opaque;
    if (sys->hw_ctx.context_id != VA_INVALID_ID)
        vlc_vaapi_DestroyContext(((void*)0), sys->hw_ctx.display, sys->hw_ctx.context_id);
    if (sys->hw_ctx.config_id != VA_INVALID_ID)
        vlc_vaapi_DestroyConfig(((void*)0), sys->hw_ctx.display, sys->hw_ctx.config_id);
    free(sys);
}
