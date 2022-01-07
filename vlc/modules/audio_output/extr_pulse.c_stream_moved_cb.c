
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream ;
typedef int audio_output_t ;


 int aout_DeviceReport (int *,char const*) ;
 int msg_Dbg (int *,char*,char const*) ;
 char* pa_stream_get_device_name (int *) ;

__attribute__((used)) static void stream_moved_cb(pa_stream *s, void *userdata)
{
    audio_output_t *aout = userdata;
    const char *name = pa_stream_get_device_name(s);

    msg_Dbg(aout, "connected to sink %s", name);
    aout_DeviceReport(aout, name);
}
