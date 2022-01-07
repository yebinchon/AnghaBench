
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint64_t ;
struct TYPE_5__ {int pf_control; int * pf_seek; int pf_read; TYPE_2__* p_sys; int s; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int b_fastseek; void* b_seek; void* b_size; } ;
typedef TYPE_2__ stream_sys_t ;


 int Control ;
 int Read ;
 int STREAM_CAN_FASTSEEK ;
 int STREAM_CAN_SEEK ;
 int * Seek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ unlikely (int ) ;
 void* var_InheritBool (TYPE_1__*,char*) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;
 scalar_t__ vlc_stream_Control (int ,int ,int*) ;
 scalar_t__ vlc_stream_GetSize (int ,int *) ;

__attribute__((used)) static int Open( vlc_object_t *p_object )
{
    stream_t *p_stream = (stream_t *) p_object;
    stream_sys_t *p_sys = vlc_obj_malloc(p_object, sizeof (*p_sys));
    if (unlikely(p_sys == ((void*)0)))
        return VLC_ENOMEM;

    uint64_t size;
    bool b;
    bool used = 0;

    p_sys->b_seek = var_InheritBool(p_stream, "seek");
    p_sys->b_size = var_InheritBool(p_stream, "stream-size");

    if (!p_sys->b_seek)
    {
        if (vlc_stream_Control(p_stream->s, STREAM_CAN_SEEK, &b) == 0)
            used = b;

        p_sys->b_fastseek = 0;
    }
    else
    {
        p_sys->b_fastseek = var_InheritBool(p_stream, "fastseek");
        if (!p_sys->b_fastseek
         && vlc_stream_Control(p_stream->s, STREAM_CAN_FASTSEEK,
                               &b) == 0)
            used = b;
    }

    if (!p_sys->b_size && vlc_stream_GetSize(p_stream->s, &size) == 0)
        used = 1;

    if (!used)
        return VLC_EGENERIC;

    p_stream->p_sys = p_sys;
    p_stream->pf_read = Read;
    p_stream->pf_seek = p_sys->b_seek ? Seek : ((void*)0);
    p_stream->pf_control = Control;

    return VLC_SUCCESS;
}
