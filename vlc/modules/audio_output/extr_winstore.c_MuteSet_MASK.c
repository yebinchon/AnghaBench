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
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/ * client; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  ISimpleAudioVolume ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(audio_output_t *aout, bool mute)
{
    aout_sys_t *sys = aout->sys;
    if( FUNC6( sys->client == NULL ) )
        return VLC_EGENERIC;
    HRESULT hr;
    ISimpleAudioVolume *pc_AudioVolume = NULL;

    hr = FUNC1(sys->client, &IID_ISimpleAudioVolume, &pc_AudioVolume);
    if (FUNC0(hr))
    {
        FUNC5(aout, "cannot get volume service (error 0x%lX)", hr);
        goto done;
    }

    hr = FUNC3(pc_AudioVolume, mute, NULL);
    if (FUNC0(hr))
    {
        FUNC5(aout, "cannot set mute (error 0x%lX)", hr);
        goto done;
    }

done:
    FUNC2(pc_AudioVolume);

    return FUNC4(hr) ? 0 : -1;
}