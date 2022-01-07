
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * p_head; scalar_t__ i_count; } ;
typedef TYPE_1__ subsdelay_heap_t ;


 int vlc_mutex_init (int *) ;

__attribute__((used)) static void SubsdelayHeapInit( subsdelay_heap_t *p_heap )
{
    p_heap->i_count = 0;
    p_heap->p_head = ((void*)0);

    vlc_mutex_init( &p_heap->lock );
}
