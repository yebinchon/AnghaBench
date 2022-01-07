
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream ;
typedef int pa_proplist ;
typedef int audio_output_t ;


 int AOUT_RESTART_OUTPUT ;
 int PA_STREAM_EVENT_FORMAT_LOST ;
 int PA_STREAM_EVENT_REQUEST_CORK ;
 int PA_STREAM_EVENT_REQUEST_UNCORK ;
 int aout_PolicyReport (int *,int) ;
 int aout_RestartRequest (int *,int ) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*,char const*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static void stream_event_cb(pa_stream *s, const char *name, pa_proplist *pl,
                            void *userdata)
{
    audio_output_t *aout = userdata;

    if (!strcmp(name, PA_STREAM_EVENT_REQUEST_CORK))
        aout_PolicyReport(aout, 1);
    else
    if (!strcmp(name, PA_STREAM_EVENT_REQUEST_UNCORK))
        aout_PolicyReport(aout, 0);
    else

    if (!strcmp(name, PA_STREAM_EVENT_FORMAT_LOST)) {
        msg_Dbg (aout, "format lost");
        aout_RestartRequest (aout, AOUT_RESTART_OUTPUT);
    } else
        msg_Warn (aout, "unhandled stream event \"%s\"", name);
    (void) s;
    (void) pl;
}
