
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_8__ {int configuration; int src_fmt; int chain_static; int chain_interactive; } ;
struct TYPE_10__ {int original; int * clock; int (* mouse_event ) (int *,int ) ;scalar_t__ spu; int mouse_opaque; int * display_pool; int * decoder_fifo; TYPE_1__ filter; int display_lock; int * display; int * spu_blend; } ;
typedef TYPE_3__ vout_thread_sys_t ;


 int INT64_MAX ;
 int ThreadDelAllFilterCallbacks (TYPE_2__*) ;
 int assert (int ) ;
 int filter_DeleteBlend (int *) ;
 int filter_chain_Delete (int ) ;
 int free (int ) ;
 int picture_fifo_Delete (int *) ;
 int spu_Detach (scalar_t__) ;
 int stub1 (int *,int ) ;
 int video_format_Clean (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_CloseWrapper (TYPE_2__*,int *) ;
 int vout_FlushUnlocked (TYPE_2__*,int,int ) ;

__attribute__((used)) static void vout_ReleaseDisplay(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    assert(sys->display != ((void*)0));

    if (sys->spu_blend != ((void*)0))
        filter_DeleteBlend(sys->spu_blend);


    if (sys->display_pool != ((void*)0))
        vout_FlushUnlocked(vout, 1, INT64_MAX);

    vlc_mutex_lock(&sys->display_lock);
    vout_CloseWrapper(vout, sys->display);
    sys->display = ((void*)0);
    vlc_mutex_unlock(&sys->display_lock);


    ThreadDelAllFilterCallbacks(vout);
    filter_chain_Delete(sys->filter.chain_interactive);
    filter_chain_Delete(sys->filter.chain_static);
    video_format_Clean(&sys->filter.src_fmt);
    free(sys->filter.configuration);

    if (sys->decoder_fifo != ((void*)0))
    {
        picture_fifo_Delete(sys->decoder_fifo);
        sys->decoder_fifo = ((void*)0);
    }
    assert(sys->display_pool == ((void*)0));

    if (sys->mouse_event)
        sys->mouse_event(((void*)0), sys->mouse_opaque);

    if (sys->spu)
        spu_Detach(sys->spu);
    sys->mouse_event = ((void*)0);
    sys->clock = ((void*)0);
    video_format_Clean(&sys->original);
}
