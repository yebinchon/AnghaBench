
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int p_buffer; int i_size; scalar_t__ i_pos; } ;
struct vlc_stream_attachment_private {TYPE_3__* attachment; TYPE_1__ memory; } ;
struct TYPE_10__ {int pf_control; int pf_seek; int pf_read; int * psz_name; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_11__ {int p_data; int i_data; } ;
typedef TYPE_3__ input_attachment_t ;


 int Control ;
 int Read ;
 int Seek ;
 int * strdup (char*) ;
 int stream_AttachmentDelete ;
 int stream_CommonDelete (TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__* vlc_stream_CustomNew (int *,int ,int,char*) ;
 struct vlc_stream_attachment_private* vlc_stream_Private (TYPE_2__*) ;

stream_t *vlc_stream_AttachmentNew(vlc_object_t *p_this,
                                   input_attachment_t *attachment)
{
    struct vlc_stream_attachment_private *p_sys;
    stream_t *s = vlc_stream_CustomNew(p_this, stream_AttachmentDelete,
                                       sizeof (*p_sys), "stream");
    if (unlikely(s == ((void*)0)))
        return ((void*)0);

    s->psz_name = strdup("attachment");
    if (unlikely(s->psz_name == ((void*)0)))
    {
        stream_CommonDelete(s);
        return ((void*)0);
    }

    p_sys = vlc_stream_Private(s);
    p_sys->memory.i_pos = 0;
    p_sys->memory.i_size = attachment->i_data;
    p_sys->memory.p_buffer = attachment->p_data;
    p_sys->attachment = attachment;

    s->pf_read = Read;
    s->pf_seek = Seek;
    s->pf_control = Control;

    return s;
}
