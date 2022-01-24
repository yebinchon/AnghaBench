#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_7__ {int /*<<< orphan*/ * client; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  ISimpleAudioVolume ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,float) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    if( FUNC7( sys->client == NULL ) )
        return VLC_EGENERIC;
    HRESULT hr;
    ISimpleAudioVolume *pc_AudioVolume = NULL;
    float gain = 1.f;

    vol = vol * vol * vol; /* ISimpleAudioVolume is tapered linearly. */

    if (vol > 1.f)
    {
        gain = vol;
        vol = 1.f;
    }

    FUNC5(aout, gain);

    hr = FUNC1(sys->client, &IID_ISimpleAudioVolume, &pc_AudioVolume);
    if (FUNC0(hr))
    {
        FUNC6(aout, "cannot get volume service (error 0x%lX)", hr);
        goto done;
    }

    hr = FUNC3(pc_AudioVolume, vol, NULL);
    if (FUNC0(hr))
    {
        FUNC6(aout, "cannot set volume (error 0x%lX)", hr);
        goto done;
    }

done:
    FUNC2(pc_AudioVolume);

    return FUNC4(hr) ? 0 : -1;
}