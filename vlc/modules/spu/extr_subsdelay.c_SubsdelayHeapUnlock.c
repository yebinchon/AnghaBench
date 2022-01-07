
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ subsdelay_heap_t ;


 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void SubsdelayHeapUnlock( subsdelay_heap_t *p_heap )
{
    vlc_mutex_unlock( &p_heap->lock );
}
