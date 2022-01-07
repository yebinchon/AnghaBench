
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {int selected_device_lock; int device_list_lock; int device_list; int i_selected_dev; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int const* UInt32 ;
typedef int OSStatus ;
typedef int CFRange ;
typedef int CFNumberRef ;
typedef int AudioObjectPropertyAddress ;
typedef int const* AudioObjectID ;


 int AOUT_RESTART_OUTPUT ;
 int CFArrayContainsValue (int ,int ,int ) ;
 int CFArrayGetCount (int ) ;
 int CFNumberCreate (int ,int ,int *) ;
 int CFRangeMake (int ,int ) ;
 int CFRelease (int ) ;
 int RebuildDeviceList (TYPE_1__*,int *) ;
 int VLC_UNUSED (int const*) ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 int kCFAllocatorDefault ;
 int kCFNumberSInt32Type ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int noErr ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static OSStatus
DevicesListener(AudioObjectID inObjectID, UInt32 inNumberAddresses,
                const AudioObjectPropertyAddress inAddresses[],
                void *inClientData)
{
    VLC_UNUSED(inObjectID);
    VLC_UNUSED(inNumberAddresses);
    VLC_UNUSED(inAddresses);

    audio_output_t *p_aout = (audio_output_t *)inClientData;
    if (!p_aout)
        return -1;
    aout_sys_t *p_sys = p_aout->sys;

    msg_Dbg(p_aout, "audio device configuration changed, resetting cache");
    RebuildDeviceList(p_aout, ((void*)0));

    vlc_mutex_lock(&p_sys->selected_device_lock);
    vlc_mutex_lock(&p_sys->device_list_lock);
    CFNumberRef selectedDevice =
        CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type,
                       &p_sys->i_selected_dev);
    CFRange range = CFRangeMake(0, CFArrayGetCount(p_sys->device_list));
    if (!CFArrayContainsValue(p_sys->device_list, range, selectedDevice))
        aout_RestartRequest(p_aout, AOUT_RESTART_OUTPUT);
    CFRelease(selectedDevice);
    vlc_mutex_unlock(&p_sys->device_list_lock);
    vlc_mutex_unlock(&p_sys->selected_device_lock);

    return noErr;
}
