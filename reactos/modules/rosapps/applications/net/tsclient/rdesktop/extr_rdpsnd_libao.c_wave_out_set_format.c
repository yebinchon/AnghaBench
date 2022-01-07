
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bits; int rate; int byte_format; int channels; } ;
typedef TYPE_1__ ao_sample_format ;
struct TYPE_7__ {int wBitsPerSample; int nSamplesPerSec; int nChannels; } ;
typedef TYPE_2__ WAVEFORMATEX ;
struct TYPE_8__ {int channels; } ;
typedef int BOOL ;


 int AO_FMT_LITTLE ;
 int False ;
 TYPE_5__* This ;
 int True ;
 int ao_close (int *) ;
 int * ao_open_live (int ,TYPE_1__*,int *) ;
 int default_driver ;
 int g_reopened ;
 int g_samplerate ;
 int g_samplewidth ;
 int * o_device ;

BOOL
wave_out_set_format(WAVEFORMATEX * pwfx)
{
 ao_sample_format format;

 format.bits = pwfx->wBitsPerSample;
 format.channels = pwfx->nChannels;
 This->channels = pwfx->nChannels;
 format.rate = 44100;
 g_samplerate = pwfx->nSamplesPerSec;
 format.byte_format = AO_FMT_LITTLE;

 g_samplewidth = pwfx->wBitsPerSample / 8;

 if (o_device != ((void*)0))
  ao_close(o_device);

 o_device = ao_open_live(default_driver, &format, ((void*)0));
 if (o_device == ((void*)0))
 {
  return False;
 }

 g_reopened = True;

 return True;
}
