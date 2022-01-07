
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {int sizeIn; TYPE_1__ value; int param; } ;
typedef TYPE_2__ ALpv ;
typedef int ALfixed ;


 int AL_DEFAULT_OUTPUT ;
 int AL_GAIN ;
 double IRIX_MAX_VOL ;
 int alDoubleToFixed (scalar_t__) ;
 char* alGetErrorString (int ) ;
 scalar_t__ alSetParams (int ,TYPE_2__*,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ min_volume ;
 int oserror () ;
 int stderr ;
 double volume_range ;

void
wave_out_volume(uint16 left, uint16 right)
{
 double gainleft, gainright;
 ALpv pv[1];
 ALfixed gain[8];






 gainleft = (double) left / IRIX_MAX_VOL;
 gainright = (double) right / IRIX_MAX_VOL;

 gain[0] = alDoubleToFixed(min_volume + gainleft * volume_range);
 gain[1] = alDoubleToFixed(min_volume + gainright * volume_range);

 pv[0].param = AL_GAIN;
 pv[0].value.ptr = gain;
 pv[0].sizeIn = 8;
 if (alSetParams(AL_DEFAULT_OUTPUT, pv, 1) < 0)
 {
  fprintf(stderr, "wave_out_volume: alSetParams failed: %s\n",
   alGetErrorString(oserror()));
  return;
 }




}
