#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/  audio_sample_format_t ;
struct TYPE_22__ {int headphones; } ;
struct TYPE_23__ {TYPE_2__ current_sink_info; TYPE_4__* sys; } ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_24__ {int /*<<< orphan*/  gain; TYPE_5__* stream; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; scalar_t__ request_device_restart; } ;
typedef  TYPE_4__ aout_sys_t ;
struct TYPE_21__ {int /*<<< orphan*/ * device; int /*<<< orphan*/  activate; } ;
struct TYPE_25__ {TYPE_1__ owner; } ;
typedef  TYPE_5__ aout_stream_t ;
struct TYPE_26__ {int uintVal; } ;
typedef  TYPE_6__ PROPVARIANT ;
typedef  int /*<<< orphan*/  IPropertyStore ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ AUDCLNT_E_ALREADY_INITIALIZED ; 
 scalar_t__ AUDCLNT_E_DEVICE_INVALIDATED ; 
 int /*<<< orphan*/  ActivateDevice ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  Headphones 132 
#define  Headset 131 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
#define  MM_PASSTHROUGH_DISABLED 130 
#define  MM_PASSTHROUGH_ENABLED 129 
#define  MM_PASSTHROUGH_ENABLED_HD 128 
 int /*<<< orphan*/  PKEY_AudioEndpoint_FormFactor ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  STGM_READ ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aout_stream_Start ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_3__*,char*) ; 
 char* FUNC19 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_5__*,char*,char*,int,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_5__* FUNC21 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC23(audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t *sys = aout->sys;

    const bool b_spdif = FUNC1(fmt);
    const bool b_hdmi = FUNC0(fmt);
    if (b_spdif || b_hdmi)
    {
        switch (FUNC18(aout, "mmdevice-passthrough"))
        {
            case MM_PASSTHROUGH_DISABLED:
                return -1;
            case MM_PASSTHROUGH_ENABLED:
                if (b_hdmi)
                    return -1;
                /* falltrough */
            case MM_PASSTHROUGH_ENABLED_HD:
                break;
        }
    }

    aout_stream_t *s = FUNC21(aout, sizeof (*s));
    if (FUNC17(s == NULL))
        return -1;

    s->owner.activate = ActivateDevice;

    FUNC5();
    FUNC4(&sys->lock);

    if ((sys->request_device_restart && FUNC2(aout) != 0)
      || sys->dev == NULL)
    {
        /* Error if the device restart failed or if a request previously
         * failed. */
        FUNC9(&sys->lock);
        FUNC10();
        FUNC22(s);
        return -1;
    }

    module_t *module;

    for (;;)
    {
        char *modlist = FUNC19(aout, "mmdevice-backend");
        HRESULT hr;
        s->owner.device = sys->dev;

        module = FUNC20(s, "aout stream", modlist,
                                 false, aout_stream_Start, s, fmt, &hr);
        FUNC16(modlist);

        int ret = -1;
        if (hr == AUDCLNT_E_ALREADY_INITIALIZED)
        {
            /* From MSDN: "If the initial call to Initialize fails, subsequent
             * Initialize calls might fail and return error code
             * E_ALREADY_INITIALIZED, even though the interface has not been
             * initialized. If this occurs, release the IAudioClient interface
             * and obtain a new IAudioClient interface from the MMDevice API
             * before calling Initialize again."
             *
             * Therefore, request to MMThread the same device and try again. */

            ret = FUNC2(aout);
        }
        else if (hr == AUDCLNT_E_DEVICE_INVALIDATED)
        {
            /* The audio endpoint device has been unplugged, request to
             * MMThread the default device and try again. */

            ret = FUNC3(aout, NULL);
        }
        if (ret != 0)
            break;
    }

    if (module != NULL)
    {
        IPropertyStore *props;
        HRESULT hr = FUNC6(sys->dev, STGM_READ, &props);
        if (FUNC13(hr))
        {
            PROPVARIANT v;
            FUNC12(&v);
            hr = FUNC7(props, &PKEY_AudioEndpoint_FormFactor, &v);
            if (FUNC13(hr))
            {
                switch (v.uintVal)
                {
                    case Headphones:
                    case Headset:
                        aout->current_sink_info.headphones = true;
                        break;
                }
                FUNC11(&v);
            }
            FUNC8(props);
        }
    }

    FUNC9(&sys->lock);
    FUNC10();

    if (module == NULL)
    {
        FUNC22(s);
        return -1;
    }

    FUNC15 (sys->stream == NULL);
    sys->stream = s;
    FUNC14(aout, sys->gain);
    return 0;
}