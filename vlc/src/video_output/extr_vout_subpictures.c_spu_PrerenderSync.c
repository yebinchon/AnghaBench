
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int lock; int vector; int output_cond; int const* p_processed; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef TYPE_2__ spu_private_t ;


 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_vector_index_of (int *,int const*,scalar_t__*) ;

__attribute__((used)) static void spu_PrerenderSync(spu_private_t *sys, const subpicture_t *p_subpic)
{
    vlc_mutex_lock(&sys->prerender.lock);
    ssize_t i_idx;
    vlc_vector_index_of(&sys->prerender.vector, p_subpic, &i_idx);
    while(i_idx >= 0 || sys->prerender.p_processed == p_subpic)
    {
        vlc_cond_wait(&sys->prerender.output_cond, &sys->prerender.lock);
        vlc_vector_index_of(&sys->prerender.vector, p_subpic, &i_idx);
    }
    vlc_mutex_unlock(&sys->prerender.lock);
}
