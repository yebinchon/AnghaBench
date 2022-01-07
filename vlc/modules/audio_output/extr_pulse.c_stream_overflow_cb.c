
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pa_stream ;
typedef int pa_operation ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int last_date; } ;
typedef TYPE_2__ aout_sys_t ;


 int VLC_TICK_INVALID ;
 int msg_Err (TYPE_1__*,char*) ;
 int pa_operation_unref (int *) ;
 int * pa_stream_flush (int *,int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void stream_overflow_cb(pa_stream *s, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;
    pa_operation *op;

    msg_Err(aout, "overflow, flushing");
    op = pa_stream_flush(s, ((void*)0), ((void*)0));
    if (unlikely(op == ((void*)0)))
        return;
    pa_operation_unref(op);
    sys->last_date = VLC_TICK_INVALID;
}
