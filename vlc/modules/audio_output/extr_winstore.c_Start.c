
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int audio_sample_format_t ;
struct TYPE_12__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_13__ {TYPE_4__* stream; int * module; int client; } ;
typedef TYPE_3__ aout_sys_t ;
struct TYPE_11__ {int activate; int device; } ;
struct TYPE_14__ {TYPE_1__ owner; } ;
typedef TYPE_4__ aout_stream_t ;
typedef int HRESULT ;


 int ActivateDevice ;
 int EnterMTA () ;
 int LeaveMTA () ;
 int aout_stream_Start ;
 int assert (int ) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_module_load (TYPE_4__*,char*,int *,int,int ,TYPE_4__*,int *,int *) ;
 TYPE_4__* vlc_object_create (TYPE_2__*,int) ;
 int vlc_object_delete (TYPE_4__*) ;

__attribute__((used)) static int Start(audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t *sys = aout->sys;
    HRESULT hr;

    aout_stream_t *s = vlc_object_create(aout, sizeof (*s));
    if (unlikely(s == ((void*)0)))
        return -1;

    s->owner.device = sys->client;
    s->owner.activate = ActivateDevice;

    EnterMTA();
    sys->module = vlc_module_load(s, "aout stream", ((void*)0), 0,
                                  aout_stream_Start, s, fmt, &hr);
    LeaveMTA();

    if (sys->module == ((void*)0))
    {
        vlc_object_delete(s);
        return -1;
    }

    assert (sys->stream == ((void*)0));
    sys->stream = s;
    return 0;
}
