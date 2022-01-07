
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int description; TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_8__ {int mainloop; int * root; int * context; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int pa_subscription_mask_t ;
typedef int pa_operation ;
typedef int pa_context ;


 int ContextCallback ;
 int PA_SUBSCRIPTION_MASK_SOURCE ;
 int SourceCallback ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 int free (TYPE_2__*) ;
 scalar_t__ likely (int ) ;
 TYPE_2__* malloc (int) ;
 int * pa_context_get_source_info_list (int *,int ,TYPE_1__*) ;
 int pa_context_set_subscribe_callback (int *,int ,TYPE_1__*) ;
 int * pa_context_subscribe (int *,int const,int *,int *) ;
 int pa_operation_unref (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_pa_connect (int *,int *) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    pa_operation *op;
    pa_context *ctx;

    services_discovery_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    ctx = vlc_pa_connect (obj, &sys->mainloop);
    if (ctx == ((void*)0))
    {
        free (sys);
        return VLC_EGENERIC;
    }

    sd->p_sys = sys;
    sd->description = _("Audio capture");
    sys->context = ctx;
    sys->root = ((void*)0);


    const pa_subscription_mask_t mask = PA_SUBSCRIPTION_MASK_SOURCE;
    pa_threaded_mainloop_lock (sys->mainloop);
    pa_context_set_subscribe_callback (ctx, ContextCallback, sd);
    op = pa_context_subscribe (ctx, mask, ((void*)0), ((void*)0));
    if (likely(op != ((void*)0)))
        pa_operation_unref (op);


    op = pa_context_get_source_info_list (ctx, SourceCallback, sd);
    if (likely(op != ((void*)0)))
    {


        pa_operation_unref (op);
    }
    pa_threaded_mainloop_unlock (sys->mainloop);
    return VLC_SUCCESS;






}
