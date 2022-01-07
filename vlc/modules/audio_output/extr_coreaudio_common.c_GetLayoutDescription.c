
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int audio_output_t ;
typedef int UInt32 ;
struct TYPE_7__ {scalar_t__ mChannelLayoutTag; scalar_t__ mNumberChannelDescriptions; int mChannelBitmap; } ;
typedef scalar_t__ OSStatus ;
typedef int AudioFormatPropertyID ;
typedef int AudioChannelLayoutTag ;
typedef TYPE_1__ AudioChannelLayout ;


 scalar_t__ AudioFormatGetProperty (int ,int,void const*,int*,TYPE_1__*) ;
 scalar_t__ AudioFormatGetPropertyInfo (int ,int,void const*,int*) ;
 int free (TYPE_1__*) ;
 scalar_t__ kAudioChannelLayoutTag_UseChannelBitmap ;
 int kAudioFormatProperty_ChannelLayoutForBitmap ;
 int kAudioFormatProperty_ChannelLayoutForTag ;
 TYPE_1__* malloc (int) ;
 int msg_Err (int *,char*) ;
 scalar_t__ noErr ;

__attribute__((used)) static AudioChannelLayout *
GetLayoutDescription(audio_output_t *p_aout,
                     const AudioChannelLayout *outlayout)
{
    AudioFormatPropertyID id;
    UInt32 size;
    const void *data;


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
    OSStatus err = AudioFormatGetPropertyInfo(id, size, data, &param_size);
    if (err != noErr)
        return ((void*)0);

    AudioChannelLayout *reslayout = malloc(param_size);
    if (reslayout == ((void*)0))
        return ((void*)0);

    err = AudioFormatGetProperty(id, size, data, &param_size, reslayout);
    if (err != noErr || reslayout->mNumberChannelDescriptions == 0)
    {
        msg_Err(p_aout, "insufficient number of output channels");
        free(reslayout);
        return ((void*)0);
    }

    return reslayout;
}
