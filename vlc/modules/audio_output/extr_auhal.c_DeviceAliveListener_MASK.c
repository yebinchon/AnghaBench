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
typedef  int /*<<< orphan*/  const* UInt32 ;
typedef  int OSStatus ;
typedef  int /*<<< orphan*/  AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  const* AudioObjectID ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int noErr ; 

__attribute__((used)) static OSStatus
FUNC3(AudioObjectID inObjectID,  UInt32 inNumberAddresses,
                    const AudioObjectPropertyAddress inAddresses[],
                    void *inClientData)
{
    FUNC0(inObjectID);
    FUNC0(inNumberAddresses);
    FUNC0(inAddresses);

    audio_output_t *p_aout = (audio_output_t *)inClientData;
    if (!p_aout)
        return -1;

    FUNC2(p_aout, "audio device died, resetting aout");
    FUNC1(p_aout, AOUT_RESTART_OUTPUT);

    return noErr;
}