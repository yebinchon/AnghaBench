
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;
typedef unsigned int UInt32 ;
struct TYPE_3__ {scalar_t__ mSelector; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 int VLC_UNUSED (int ) ;
 scalar_t__ kAudioStreamPropertyPhysicalFormat ;
 int noErr ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static OSStatus
StreamListener(AudioObjectID inObjectID, UInt32 inNumberAddresses,
               const AudioObjectPropertyAddress inAddresses[],
               void *inClientData)
{
    OSStatus err = noErr;
    struct { vlc_mutex_t lock; vlc_cond_t cond; } * w = inClientData;

    VLC_UNUSED(inObjectID);

    for (unsigned int i = 0; i < inNumberAddresses; i++)
    {
        if (inAddresses[i].mSelector == kAudioStreamPropertyPhysicalFormat)
        {
            int canc = vlc_savecancel();
            vlc_mutex_lock(&w->lock);
            vlc_cond_signal(&w->cond);
            vlc_mutex_unlock(&w->lock);
            vlc_restorecancel(canc);
            break;
        }
    }
    return err;
}
