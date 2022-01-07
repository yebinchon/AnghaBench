
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ll; } ;
struct TYPE_5__ {int ll; } ;
struct TYPE_7__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef int BOOL ;
typedef scalar_t__ ALport ;
typedef TYPE_3__ ALparamInfo ;
typedef scalar_t__ ALconfig ;


 int AL_DEFAULT_OUTPUT ;
 int AL_GAIN ;
 int False ;
 int True ;
 scalar_t__ alFixedToDouble (int ) ;
 char* alGetErrorString (int ) ;
 scalar_t__ alGetParamInfo (int ,int ,TYPE_3__*) ;
 scalar_t__ alNewConfig () ;
 scalar_t__ alOpenPort (char*,char*,int ) ;
 scalar_t__ audioconfig ;
 int fprintf (int ,char*,...) ;
 scalar_t__ max_volume ;
 scalar_t__ min_volume ;
 int oserror () ;
 scalar_t__ output_port ;
 scalar_t__ queue_hi ;
 scalar_t__ queue_lo ;
 int stderr ;
 scalar_t__ volume_range ;

BOOL
wave_out_open(void)
{
 ALparamInfo pinfo;





 if (alGetParamInfo(AL_DEFAULT_OUTPUT, AL_GAIN, &pinfo) < 0)
 {
  fprintf(stderr, "wave_out_open: alGetParamInfo failed: %s\n",
   alGetErrorString(oserror()));
 }
 min_volume = alFixedToDouble(pinfo.min.ll);
 max_volume = alFixedToDouble(pinfo.max.ll);
 volume_range = (max_volume - min_volume);





 queue_lo = queue_hi = 0;

 audioconfig = alNewConfig();
 if (audioconfig == (ALconfig) 0)
 {
  fprintf(stderr, "wave_out_open: alNewConfig failed: %s\n",
   alGetErrorString(oserror()));
  return False;
 }

 output_port = alOpenPort("rdpsnd", "w", 0);
 if (output_port == (ALport) 0)
 {
  fprintf(stderr, "wave_out_open: alOpenPort failed: %s\n",
   alGetErrorString(oserror()));
  return False;
 }




 return True;
}
