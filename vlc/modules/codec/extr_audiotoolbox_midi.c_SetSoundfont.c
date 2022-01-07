
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int url ;
typedef int decoder_t ;
typedef int UInt8 ;
typedef scalar_t__ OSStatus ;
typedef int * CFURLRef ;
typedef int AudioUnit ;


 scalar_t__ AudioUnitSetProperty (int ,int ,int ,int ,int **,int) ;
 int CFRelease (int *) ;
 int * CFURLCreateFromFileSystemRepresentation (int ,int const*,int ,int) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int kAudioUnitScope_Global ;
 int kCFAllocatorDefault ;
 int kMusicDeviceProperty_SoundBankURL ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,scalar_t__) ;
 scalar_t__ noErr ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int SetSoundfont(decoder_t *p_dec, AudioUnit synthUnit, const char *sfPath) {
    if (!sfPath) {
        msg_Dbg(p_dec, "using default soundfont");
        return VLC_SUCCESS;
    }

    msg_Dbg(p_dec, "using custom soundfont: '%s'", sfPath);
    CFURLRef url = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault,
                                                           (const UInt8 *)sfPath,
                                                           strlen(sfPath), 0);
    if (unlikely(url == ((void*)0)))
        return VLC_ENOMEM;

    OSStatus status = AudioUnitSetProperty(synthUnit,
                                           kMusicDeviceProperty_SoundBankURL,
                                           kAudioUnitScope_Global, 0,
                                           &url, sizeof(url));
    CFRelease(url);

    if (status != noErr) {
        msg_Err(p_dec, "failed setting custom SoundFont for MIDI synthesis (%i)", status);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
