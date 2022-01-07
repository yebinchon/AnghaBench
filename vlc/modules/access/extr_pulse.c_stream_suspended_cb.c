
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream ;
typedef int demux_t ;


 int msg_Dbg (int *,char*) ;

__attribute__((used)) static void stream_suspended_cb(pa_stream *s, void *userdata)
{
    demux_t *demux = userdata;

    msg_Dbg(demux, "suspended");
    (void) s;
}
