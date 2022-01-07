
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int wait; int refs; } ;
typedef TYPE_1__ picture_pool_t ;


 int aligned_free (TYPE_1__*) ;
 int atomic_fetch_sub_explicit (int *,int,int ) ;
 int atomic_thread_fence (int ) ;
 int memory_order_acquire ;
 int memory_order_release ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void picture_pool_Destroy(picture_pool_t *pool)
{
    if (atomic_fetch_sub_explicit(&pool->refs, 1, memory_order_release) != 1)
        return;

    atomic_thread_fence(memory_order_acquire);
    vlc_cond_destroy(&pool->wait);
    vlc_mutex_destroy(&pool->lock);
    aligned_free(pool);
}
