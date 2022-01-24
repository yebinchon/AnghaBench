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
struct TYPE_7__ {int /*<<< orphan*/  selected_device_lock; int /*<<< orphan*/  device_list_lock; int /*<<< orphan*/  device_list; int /*<<< orphan*/  i_selected_dev; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  const* UInt32 ;
typedef  int OSStatus ;
typedef  int /*<<< orphan*/  CFRange ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  const* AudioObjectID ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFNumberSInt32Type ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int noErr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static OSStatus
FUNC11(AudioObjectID inObjectID, UInt32 inNumberAddresses,
                const AudioObjectPropertyAddress inAddresses[],
                void *inClientData)
{
    FUNC6(inObjectID);
    FUNC6(inNumberAddresses);
    FUNC6(inAddresses);

    audio_output_t *p_aout = (audio_output_t *)inClientData;
    if (!p_aout)
        return -1;
    aout_sys_t *p_sys = p_aout->sys;

    FUNC8(p_aout, "audio device configuration changed, resetting cache");
    FUNC5(p_aout, NULL);

    FUNC9(&p_sys->selected_device_lock);
    FUNC9(&p_sys->device_list_lock);
    CFNumberRef selectedDevice =
        FUNC2(kCFAllocatorDefault, kCFNumberSInt32Type,
                       &p_sys->i_selected_dev);
    CFRange range = FUNC3(0, FUNC1(p_sys->device_list));
    if (!FUNC0(p_sys->device_list, range, selectedDevice))
        FUNC7(p_aout, AOUT_RESTART_OUTPUT);
    FUNC4(selectedDevice);
    FUNC10(&p_sys->device_list_lock);
    FUNC10(&p_sys->selected_device_lock);

    return noErr;
}