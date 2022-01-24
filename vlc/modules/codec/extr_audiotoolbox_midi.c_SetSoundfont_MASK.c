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
typedef  int /*<<< orphan*/  url ;
typedef  int /*<<< orphan*/  decoder_t ;
typedef  int /*<<< orphan*/  UInt8 ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/ * CFURLRef ;
typedef  int /*<<< orphan*/  AudioUnit ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  kAudioUnitScope_Global ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kMusicDeviceProperty_SoundBankURL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(decoder_t *p_dec, AudioUnit synthUnit, const char *sfPath) {
    if (!sfPath) {
        FUNC3(p_dec, "using default soundfont");
        return VLC_SUCCESS;
    }

    FUNC3(p_dec, "using custom soundfont: '%s'", sfPath);
    CFURLRef url = FUNC2(kCFAllocatorDefault,
                                                           (const UInt8 *)sfPath,
                                                           FUNC5(sfPath), false);
    if (FUNC6(url == NULL))
        return VLC_ENOMEM;

    OSStatus status = FUNC0(synthUnit,
                                           kMusicDeviceProperty_SoundBankURL,
                                           kAudioUnitScope_Global, 0,
                                           &url, sizeof(url));
    FUNC1(url);

    if (status != noErr) {
        FUNC4(p_dec, "failed setting custom SoundFont for MIDI synthesis (%i)", status);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}