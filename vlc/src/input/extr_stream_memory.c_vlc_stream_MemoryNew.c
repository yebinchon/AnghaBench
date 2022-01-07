
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct vlc_stream_memory_private {size_t i_size; int * p_buffer; scalar_t__ i_pos; } ;
struct TYPE_5__ {int pf_control; int pf_seek; int pf_read; } ;
typedef TYPE_1__ stream_t ;


 int Control ;
 int Read ;
 int Seek ;
 int stream_MemoryDelete ;
 int stream_MemoryPreserveDelete ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_stream_CustomNew (int *,int ,int,char*) ;
 struct vlc_stream_memory_private* vlc_stream_Private (TYPE_1__*) ;

stream_t *(vlc_stream_MemoryNew)(vlc_object_t *p_this, uint8_t *p_buffer,
                                 size_t i_size, bool preserve)
{
    struct vlc_stream_memory_private *p_sys;
    stream_t *s = vlc_stream_CustomNew(p_this,
                                       preserve ? stream_MemoryPreserveDelete
                                                : stream_MemoryDelete,
                                       sizeof (*p_sys), "stream");
    if (unlikely(s == ((void*)0)))
        return ((void*)0);

    p_sys = vlc_stream_Private(s);
    p_sys->i_pos = 0;
    p_sys->i_size = i_size;
    p_sys->p_buffer = p_buffer;

    s->pf_read = Read;
    s->pf_seek = Seek;
    s->pf_control = Control;

    return s;
}
