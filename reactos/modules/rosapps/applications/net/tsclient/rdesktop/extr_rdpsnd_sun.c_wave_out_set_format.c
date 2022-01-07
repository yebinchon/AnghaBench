
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int channels; int precision; scalar_t__ error; scalar_t__ eof; scalar_t__ samples; int sample_rate; int encoding; } ;
struct TYPE_9__ {TYPE_1__ play; } ;
typedef TYPE_2__ audio_info_t ;
struct TYPE_10__ {int wBitsPerSample; int nChannels; int nSamplesPerSec; } ;
typedef TYPE_3__ WAVEFORMATEX ;
struct TYPE_11__ {int dsp_; } ;
typedef void* BOOL ;


 int AUDIO_DRAIN ;
 int AUDIO_ENCODING_LINEAR ;
 int AUDIO_ENCODING_LINEAR8 ;
 int AUDIO_INITINFO (TYPE_2__*) ;
 int AUDIO_SETINFO ;
 void* False ;
 TYPE_6__* This ;
 void* True ;
 int close (int ) ;
 void* g_reopened ;
 int g_samplewidth ;
 int g_swapaudio ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int perror (char*) ;

BOOL
wave_out_set_format(WAVEFORMATEX * pwfx)
{
 audio_info_t info;

 ioctl(This->dsp_, AUDIO_DRAIN, 0);
 g_swapaudio = False;
 AUDIO_INITINFO(&info);


 if (pwfx->wBitsPerSample == 8)
 {
  info.play.encoding = AUDIO_ENCODING_LINEAR8;
 }
 else if (pwfx->wBitsPerSample == 16)
 {
  info.play.encoding = AUDIO_ENCODING_LINEAR;




  g_swapaudio = 0;

 }

 g_samplewidth = pwfx->wBitsPerSample / 8;

 if (pwfx->nChannels == 1)
 {
  info.play.channels = 1;
 }
 else if (pwfx->nChannels == 2)
 {
  info.play.channels = 2;
  g_samplewidth *= 2;
 }

 info.play.sample_rate = pwfx->nSamplesPerSec;
 info.play.precision = pwfx->wBitsPerSample;
 info.play.samples = 0;
 info.play.eof = 0;
 info.play.error = 0;
 g_reopened = True;

 if (ioctl(This->dsp_, AUDIO_SETINFO, &info) == -1)
 {
  perror("AUDIO_SETINFO");
  close(This->dsp_);
  return False;
 }

 return True;
}
