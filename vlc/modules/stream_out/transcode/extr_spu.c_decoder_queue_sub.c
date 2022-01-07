
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef TYPE_3__ subpicture_t ;
struct decoder_owner {TYPE_4__* id; } ;
struct TYPE_7__ {TYPE_3__** last; } ;
struct TYPE_6__ {int lock; TYPE_2__ spu; } ;
struct TYPE_9__ {TYPE_1__ fifo; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void decoder_queue_sub( decoder_t *p_dec, subpicture_t *p_spu )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    sout_stream_id_sys_t *id = p_owner->id;

    vlc_mutex_lock(&id->fifo.lock);
    *id->fifo.spu.last = p_spu;
    id->fifo.spu.last = &p_spu->p_next;
    vlc_mutex_unlock(&id->fifo.lock);
}
