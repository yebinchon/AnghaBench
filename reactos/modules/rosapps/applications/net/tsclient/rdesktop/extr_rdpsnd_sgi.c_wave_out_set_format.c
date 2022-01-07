
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int wBitsPerSample; int nChannels; int nSamplesPerSec; } ;
typedef TYPE_2__ WAVEFORMATEX ;
struct TYPE_6__ {long long ll; } ;
struct TYPE_8__ {scalar_t__ sizeOut; TYPE_1__ value; int param; } ;
typedef int BOOL ;
typedef TYPE_3__ ALpv ;
typedef scalar_t__ ALport ;


 int AL_RATE ;
 int AL_SAMPFMT_TWOSCOMP ;
 int AL_SAMPLE_16 ;
 int AL_SAMPLE_8 ;
 int False ;
 int True ;
 int alClosePort (scalar_t__) ;
 int alGetChannels (int ) ;
 char* alGetErrorString (int ) ;
 int alGetFillable (scalar_t__) ;
 int alGetResource (scalar_t__) ;
 int alGetWidth (int ) ;
 scalar_t__ alOpenPort (char*,char*,int ) ;
 int alSetChannels (int ,int) ;
 scalar_t__ alSetParams (int ,TYPE_3__*,int) ;
 int alSetSampFmt (int ,int ) ;
 int alSetWidth (int ,int ) ;
 int audioconfig ;
 int combinedFrameSize ;
 int fprintf (int ,char*,...) ;
 int g_snd_rate ;
 int g_swapaudio ;
 int maxFillable ;
 int oserror () ;
 scalar_t__ output_port ;
 int resource ;
 int stderr ;
 int width ;

BOOL
wave_out_set_format(WAVEFORMATEX * pwfx)
{
 int channels;
 int frameSize, channelCount;
 ALpv params;





 g_swapaudio = False;
 if (pwfx->wBitsPerSample == 8)
  width = AL_SAMPLE_8;
 else if (pwfx->wBitsPerSample == 16)
 {
  width = AL_SAMPLE_16;




  g_swapaudio = 0;

 }







 channels = pwfx->nChannels;
 g_snd_rate = pwfx->nSamplesPerSec;

 alSetSampFmt(audioconfig, AL_SAMPFMT_TWOSCOMP);
 alSetWidth(audioconfig, width);
 if (channels != alGetChannels(audioconfig))
 {
  alClosePort(output_port);
  alSetChannels(audioconfig, channels);
  output_port = alOpenPort("rdpsnd", "w", audioconfig);

  if (output_port == (ALport) 0)
  {
   fprintf(stderr, "wave_out_set_format: alOpenPort failed: %s\n",
    alGetErrorString(oserror()));
   return False;
  }

 }

 resource = alGetResource(output_port);
 maxFillable = alGetFillable(output_port);
 channelCount = alGetChannels(audioconfig);
 frameSize = alGetWidth(audioconfig);

 if (frameSize == 0 || channelCount == 0)
 {
  fprintf(stderr, "wave_out_set_format: bad frameSize or channelCount\n");
  return False;
 }
 combinedFrameSize = frameSize * channelCount;

 params.param = AL_RATE;
 params.value.ll = (long long) g_snd_rate << 32;

 if (alSetParams(resource, &params, 1) < 0)
 {
  fprintf(stderr, "wave_set_format: alSetParams failed: %s\n",
   alGetErrorString(oserror()));
  return False;
 }
 if (params.sizeOut < 0)
 {
  fprintf(stderr, "wave_set_format: invalid rate %d\n", g_snd_rate);
  return False;
 }




 return True;
}
