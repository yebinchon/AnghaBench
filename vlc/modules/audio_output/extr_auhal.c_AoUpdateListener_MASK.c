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
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  AudioObjectPropertyListenerProc ;
typedef  int /*<<< orphan*/  AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  AudioObjectID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ noErr ; 

__attribute__((used)) static int
FUNC3(audio_output_t *p_aout, bool add, AudioObjectID id,
                 const AudioObjectPropertyAddress *p_address,
                 AudioObjectPropertyListenerProc listener, void *data)
{
    OSStatus err = add ?
        FUNC0(id, p_address, listener, data) :
        FUNC1(id, p_address, listener, data);

    if (err != noErr)
    {
        FUNC2(p_aout, "AudioObject%sPropertyListener failed, device id %i, "
                "prop: [%4.4s], OSStatus: %d", add ? "Add" : "Remove", id,
                (const char *)&p_address[0], (int)err);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}