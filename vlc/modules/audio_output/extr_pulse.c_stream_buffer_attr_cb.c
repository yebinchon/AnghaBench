
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_3__ {int minreq; int prebuf; int tlength; int maxlength; } ;
typedef TYPE_1__ pa_buffer_attr ;
typedef int audio_output_t ;


 int msg_Dbg (int *,char*,int ,int ,int ,int ) ;
 TYPE_1__* pa_stream_get_buffer_attr (int *) ;

__attribute__((used)) static void stream_buffer_attr_cb(pa_stream *s, void *userdata)
{
    audio_output_t *aout = userdata;
    const pa_buffer_attr *pba = pa_stream_get_buffer_attr(s);

    msg_Dbg(aout, "changed buffer metrics: maxlength=%u, tlength=%u, "
            "prebuf=%u, minreq=%u",
            pba->maxlength, pba->tlength, pba->prebuf, pba->minreq);
}
