
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bits; int channels; int rate; int byte_format; } ;
typedef TYPE_1__ ao_sample_format ;
struct TYPE_5__ {int channels; scalar_t__ dsp_; } ;
typedef int BOOL ;


 int AO_FMT_LITTLE ;
 int False ;
 TYPE_3__* This ;
 int True ;
 int ao_default_driver_id () ;
 int ao_initialize () ;
 int * ao_open_live (int ,TYPE_1__*,int *) ;
 int default_driver ;
 int g_reopened ;
 int g_samplerate ;
 int * o_device ;
 scalar_t__ queue_hi ;
 scalar_t__ queue_lo ;

BOOL
wave_out_open(void)
{
 ao_sample_format format;

 ao_initialize();
 default_driver = ao_default_driver_id();

 format.bits = 16;
 format.channels = 2;
 This->channels = 2;
 format.rate = 44100;
 g_samplerate = 44100;
 format.byte_format = AO_FMT_LITTLE;

 o_device = ao_open_live(default_driver, &format, ((void*)0));
 if (o_device == ((void*)0))
 {
  return False;
 }

 This->dsp_ = 0;
 queue_lo = queue_hi = 0;

 g_reopened = True;

 return True;
}
