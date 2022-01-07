
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p; } ;
typedef TYPE_4__ vout_thread_t ;
struct TYPE_7__ {int lock; int chain_interactive; int chain_static; } ;
struct TYPE_6__ {int * next; int * current; } ;
struct TYPE_8__ {TYPE_2__ filter; TYPE_1__ displayed; } ;


 int filter_chain_VideoFlush (int ) ;
 int picture_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void ThreadFilterFlush(vout_thread_t *vout, bool is_locked)
{
    if (vout->p->displayed.current)
    {
        picture_Release( vout->p->displayed.current );
        vout->p->displayed.current = ((void*)0);
    }

    if (vout->p->displayed.next)
    {
        picture_Release( vout->p->displayed.next );
        vout->p->displayed.next = ((void*)0);
    }

    if (!is_locked)
        vlc_mutex_lock(&vout->p->filter.lock);
    filter_chain_VideoFlush(vout->p->filter.chain_static);
    filter_chain_VideoFlush(vout->p->filter.chain_interactive);
    if (!is_locked)
        vlc_mutex_unlock(&vout->p->filter.lock);
}
