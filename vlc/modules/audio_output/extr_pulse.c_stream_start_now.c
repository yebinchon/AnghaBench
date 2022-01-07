
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pa_stream ;
typedef int pa_operation ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int * trigger; } ;
typedef TYPE_2__ aout_sys_t ;


 int assert (int ) ;
 scalar_t__ likely (int ) ;
 int pa_operation_unref (int *) ;
 int * pa_stream_cork (int *,int ,int *,int *) ;
 int * pa_stream_trigger (int *,int *,int *) ;

__attribute__((used)) static void stream_start_now(pa_stream *s, audio_output_t *aout)
{
    pa_operation *op;

    assert ( ((aout_sys_t *)aout->sys)->trigger == ((void*)0) );

    op = pa_stream_cork(s, 0, ((void*)0), ((void*)0));
    if (op != ((void*)0))
        pa_operation_unref(op);
    op = pa_stream_trigger(s, ((void*)0), ((void*)0));
    if (likely(op != ((void*)0)))
        pa_operation_unref(op);
}
