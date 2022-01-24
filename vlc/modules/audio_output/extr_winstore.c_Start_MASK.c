#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_sample_format_t ;
struct TYPE_12__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_13__ {TYPE_4__* stream; int /*<<< orphan*/ * module; int /*<<< orphan*/  client; } ;
typedef  TYPE_3__ aout_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  activate; int /*<<< orphan*/  device; } ;
struct TYPE_14__ {TYPE_1__ owner; } ;
typedef  TYPE_4__ aout_stream_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActivateDevice ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  aout_stream_Start ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t *sys = aout->sys;
    HRESULT hr;

    aout_stream_t *s = FUNC5(aout, sizeof (*s));
    if (FUNC3(s == NULL))
        return -1;

    s->owner.device = sys->client;
    s->owner.activate = ActivateDevice;

    FUNC0();
    sys->module = FUNC4(s, "aout stream", NULL, false,
                                  aout_stream_Start, s, fmt, &hr);
    FUNC1();

    if (sys->module == NULL)
    {
        FUNC6(s);
        return -1;
    }

    FUNC2 (sys->stream == NULL);
    sys->stream = s;
    return 0;
}