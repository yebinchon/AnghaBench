
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__ const* UInt32 ;
struct TYPE_15__ {TYPE_1__* mBuffers; } ;
struct TYPE_14__ {int mFlags; int mHostTime; } ;
struct TYPE_13__ {int mDataByteSize; int mData; } ;
typedef int OSStatus ;
typedef TYPE_2__ const AudioUnitRenderActionFlags ;
typedef TYPE_2__ AudioTimeStamp ;
typedef TYPE_5__ AudioBufferList ;


 int VLC_UNUSED (TYPE_2__ const*) ;
 int ca_Render (void*,TYPE_2__ const*,int ,int ,int ) ;
 int kAudioTimeStampHostTimeValid ;
 int noErr ;

__attribute__((used)) static OSStatus
RenderCallback(void *p_data, AudioUnitRenderActionFlags *ioActionFlags,
               const AudioTimeStamp *inTimeStamp, UInt32 inBusNumber,
               UInt32 inNumberFrames, AudioBufferList *ioData)
{
    VLC_UNUSED(ioActionFlags);
    VLC_UNUSED(inTimeStamp);
    VLC_UNUSED(inBusNumber);

    uint64_t i_host_time = (inTimeStamp->mFlags & kAudioTimeStampHostTimeValid)
                         ? inTimeStamp->mHostTime : 0;

    ca_Render(p_data, inNumberFrames, i_host_time, ioData->mBuffers[0].mData,
              ioData->mBuffers[0].mDataByteSize);

    return noErr;
}
