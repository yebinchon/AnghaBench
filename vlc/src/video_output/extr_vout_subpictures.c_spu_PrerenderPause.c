
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__* chroma_list; int output_cond; scalar_t__ p_processed; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef TYPE_2__ spu_private_t ;


 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void spu_PrerenderPause(spu_private_t *sys)
{
    vlc_mutex_lock(&sys->prerender.lock);
    while(sys->prerender.p_processed)
        vlc_cond_wait(&sys->prerender.output_cond, &sys->prerender.lock);
    sys->prerender.chroma_list[0] = 0;
    vlc_mutex_unlock(&sys->prerender.lock);
}
