
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef unsigned int pa_subscription_event_type_t ;
typedef int pa_context ;
struct TYPE_3__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_4__ {int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 unsigned int PA_SUBSCRIPTION_EVENT_FACILITY_MASK ;


 unsigned int PA_SUBSCRIPTION_EVENT_TYPE_MASK ;
 int pa_stream_get_index (int *) ;
 int sink_event (int *,unsigned int,int ,void*) ;
 int sink_input_event (int *,unsigned int,int ,void*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void context_cb(pa_context *ctx, pa_subscription_event_type_t type,
                       uint32_t idx, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;
    unsigned facility = type & PA_SUBSCRIPTION_EVENT_FACILITY_MASK;

    type &= PA_SUBSCRIPTION_EVENT_TYPE_MASK;
    switch (facility)
    {
        case 129:
            sink_event(ctx, type, idx, userdata);
            break;

        case 128:

            if (sys->stream != ((void*)0) && idx == pa_stream_get_index(sys->stream))
                sink_input_event(ctx, type, idx, userdata);
            break;

        default:
            vlc_assert_unreachable();
    }
}
