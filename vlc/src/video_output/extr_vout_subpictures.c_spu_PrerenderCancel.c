
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int lock; int output_cond; int const* p_processed; int vector; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef TYPE_2__ spu_private_t ;


 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_vector_index_of (int *,int const*,scalar_t__*) ;
 int vlc_vector_remove (int *,scalar_t__) ;

__attribute__((used)) static void spu_PrerenderCancel(spu_private_t *sys, const subpicture_t *p_subpic)
{
    vlc_mutex_lock(&sys->prerender.lock);
    ssize_t i_idx;
    vlc_vector_index_of(&sys->prerender.vector, p_subpic, &i_idx);
    if(i_idx >= 0)
        vlc_vector_remove(&sys->prerender.vector, i_idx);
    else while(sys->prerender.p_processed == p_subpic)
        vlc_cond_wait(&sys->prerender.output_cond, &sys->prerender.lock);
    vlc_mutex_unlock(&sys->prerender.lock);
}
