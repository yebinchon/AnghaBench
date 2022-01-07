
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct decoder_owner {TYPE_3__* id; } ;
struct TYPE_7__ {TYPE_4__** last; } ;
struct TYPE_6__ {int lock; TYPE_2__ pic; } ;
struct TYPE_8__ {TYPE_1__ fifo; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;
struct TYPE_9__ {struct TYPE_9__* p_next; } ;
typedef TYPE_4__ picture_t ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void decoder_queue_video( decoder_t *p_dec, picture_t *p_pic )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    sout_stream_id_sys_t *id = p_owner->id;

    vlc_mutex_lock(&id->fifo.lock);
    *id->fifo.pic.last = p_pic;
    id->fifo.pic.last = &p_pic->p_next;
    vlc_mutex_unlock(&id->fifo.lock);
}
