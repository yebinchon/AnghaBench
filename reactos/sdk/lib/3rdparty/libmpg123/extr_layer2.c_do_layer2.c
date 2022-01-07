
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fraction; } ;
struct TYPE_10__ {int stereo; int single; int jsbound; scalar_t__ mode; int mode_ext; int II_sblimit; scalar_t__ (* synth_stereo ) (int ,int ,TYPE_2__*) ;scalar_t__ (* synth_mono ) (int ,TYPE_2__*) ;TYPE_1__ layer2; } ;
typedef TYPE_2__ mpg123_handle ;


 int II_select_table (TYPE_2__*) ;
 int II_step_one (unsigned int*,int*,TYPE_2__*) ;
 int II_step_two (unsigned int*,int **,int*,TYPE_2__*,int) ;
 scalar_t__ MPG_MD_JOINT_STEREO ;
 size_t SBLIMIT ;
 int SCALE_BLOCK ;
 int SINGLE_LEFT ;
 int SINGLE_MIX ;
 int SINGLE_STEREO ;
 int fprintf (int ,char*) ;
 int ** fraction ;
 int ** real (int *) ;
 int stderr ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;
 scalar_t__ stub2 (int ,int ,TYPE_2__*) ;

int do_layer2(mpg123_handle *fr)
{
 int clip=0;
 int i,j;
 int stereo = fr->stereo;


 real (*fraction)[4][SBLIMIT] = fr->layer2.fraction;
 unsigned int bit_alloc[64];
 int scale[192];
 int single = fr->single;

 II_select_table(fr);
 fr->jsbound = (fr->mode == MPG_MD_JOINT_STEREO) ? (fr->mode_ext<<2)+4 : fr->II_sblimit;

 if(fr->jsbound > fr->II_sblimit)
 {
  fprintf(stderr, "Truncating stereo boundary to sideband limit.\n");
  fr->jsbound=fr->II_sblimit;
 }


 if(stereo == 1 || single == SINGLE_MIX)
 single = SINGLE_LEFT;

 II_step_one(bit_alloc, scale, fr);

 for(i=0;i<SCALE_BLOCK;i++)
 {
  II_step_two(bit_alloc,fraction,scale,fr,i>>2);
  for(j=0;j<3;j++)
  {
   if(single != SINGLE_STEREO)
   clip += (fr->synth_mono)(fraction[single][j], fr);
   else
   clip += (fr->synth_stereo)(fraction[0][j], fraction[1][j], fr);
  }
 }

 return clip;
}
