#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  audio_output_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_DEVICE_INVALIDATED ; 
 scalar_t__ AUDCLNT_E_RESOURCES_INVALIDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(audio_output_t *aout, HRESULT hr)
{
    /* Select the default device (and restart) on unplug */
    if (FUNC2(hr == AUDCLNT_E_DEVICE_INVALIDATED ||
                 hr == AUDCLNT_E_RESOURCES_INVALIDATED))
        FUNC0(aout, NULL);
    return FUNC1(hr) ? 0 : -1;
}