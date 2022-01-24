#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_output_t ;
typedef  int UInt32 ;
struct TYPE_7__ {scalar_t__ mChannelLayoutTag; scalar_t__ mNumberChannelDescriptions; int /*<<< orphan*/  mChannelBitmap; } ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  AudioFormatPropertyID ;
typedef  int /*<<< orphan*/  AudioChannelLayoutTag ;
typedef  TYPE_1__ AudioChannelLayout ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,void const*,int*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,void const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ kAudioChannelLayoutTag_UseChannelBitmap ; 
 int /*<<< orphan*/  kAudioFormatProperty_ChannelLayoutForBitmap ; 
 int /*<<< orphan*/  kAudioFormatProperty_ChannelLayoutForTag ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ noErr ; 

__attribute__((used)) static AudioChannelLayout *
FUNC5(audio_output_t *p_aout,
                     const AudioChannelLayout *outlayout)
{
    AudioFormatPropertyID id;
    UInt32 size;
    const void *data;
    /* We need to "fill out" the ChannelLayout, because there are multiple
     * ways that it can be set */
    if (outlayout->mChannelLayoutTag == kAudioChannelLayoutTag_UseChannelBitmap)
    {
        id = kAudioFormatProperty_ChannelLayoutForBitmap;
        size = sizeof(UInt32);
        data = &outlayout->mChannelBitmap;
    }
    else
    {
        id = kAudioFormatProperty_ChannelLayoutForTag;
        size = sizeof(AudioChannelLayoutTag);
        data = &outlayout->mChannelLayoutTag;
    }

    UInt32 param_size;
    OSStatus err = FUNC1(id, size, data, &param_size);
    if (err != noErr)
        return NULL;

    AudioChannelLayout *reslayout = FUNC3(param_size);
    if (reslayout == NULL)
        return NULL;

    err = FUNC0(id, size, data, &param_size, reslayout);
    if (err != noErr || reslayout->mNumberChannelDescriptions == 0)
    {
        FUNC4(p_aout, "insufficient number of output channels");
        FUNC2(reslayout);
        return NULL;
    }

    return reslayout;
}