#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_6__ {int pending_input_events; int pending_output_events; int /*<<< orphan*/  event_generator; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  scalar_t__ MediaEventType ;
typedef  int /*<<< orphan*/  IMFMediaEvent ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MF_EVENT_FLAG_NO_WAIT ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VLC_METransformHaveOutput ; 
 scalar_t__ VLC_METransformNeedInput ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static HRESULT FUNC5(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    IMFMediaEvent *event = NULL;
    hr = FUNC1(p_sys->event_generator, MF_EVENT_FLAG_NO_WAIT, &event);
    if (FUNC0(hr))
        return hr;
    MediaEventType event_type;
    hr = FUNC2(event, &event_type);
    FUNC3(event);
    if (FUNC0(hr))
        return hr;

    if (event_type == VLC_METransformNeedInput)
        p_sys->pending_input_events += 1;
    else if (event_type == VLC_METransformHaveOutput)
        p_sys->pending_output_events += 1;
    else
        FUNC4(p_dec, "Unsupported asynchronous event.");

    return S_OK;
}