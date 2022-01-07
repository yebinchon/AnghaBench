
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_4__ {int lock; int cond; int vector; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef TYPE_2__ spu_private_t ;


 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_vector_push (int *,int *) ;

__attribute__((used)) static void spu_PrerenderEnqueue(spu_private_t *sys, subpicture_t *p_subpic)
{
    vlc_mutex_lock(&sys->prerender.lock);
    vlc_vector_push(&sys->prerender.vector, p_subpic);
    vlc_cond_signal(&sys->prerender.cond);
    vlc_mutex_unlock(&sys->prerender.lock);
}
