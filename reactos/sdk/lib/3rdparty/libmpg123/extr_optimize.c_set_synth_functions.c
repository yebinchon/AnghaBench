
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ class; scalar_t__ type; } ;
struct TYPE_15__ {int ** mono; int ** mono2stereo; int ** stereo; int ** plain; } ;
struct TYPE_14__ {int dec_enc; int channels; } ;
struct TYPE_17__ {int down_sample; int (* make_decode_tables ) (TYPE_4__*) ;TYPE_3__ cpu_opts; int err; TYPE_2__ synths; TYPE_1__ af; int synth_mono; int synth_stereo; int synth; } ;
typedef TYPE_4__ mpg123_handle ;
typedef enum synth_resample { ____Placeholder_synth_resample } synth_resample ;
typedef enum synth_format { ____Placeholder_synth_format } synth_format ;


 scalar_t__ FALSE ;
 int MPG123_BAD_DECODER_SETUP ;
 int MPG123_ENC_16 ;
 int MPG123_ENC_24 ;
 int MPG123_ENC_32 ;
 int MPG123_ENC_8 ;
 int MPG123_ENC_FLOAT ;
 int MPG123_ERR ;
 int MPG123_NO_BUFFERS ;
 scalar_t__ MPG123_OK ;
 scalar_t__ NOQUIET ;
 scalar_t__ avx ;
 int debug2 (char*,int,int) ;
 int error (char*) ;
 int f_16 ;
 int f_32 ;
 int f_8 ;
 int f_none ;
 int f_real ;
 scalar_t__ find_dectype (TYPE_4__*) ;
 scalar_t__ frame_buffers (TYPE_4__*) ;
 int init_layer12_stuff (TYPE_4__*,int ) ;
 int init_layer12_table ;
 int init_layer12_table_mmx ;
 int init_layer3_gainpow2 ;
 int init_layer3_gainpow2_mmx ;
 int init_layer3_stuff (TYPE_4__*,int ) ;
 scalar_t__ make_conv16to8_table (TYPE_4__*) ;
 int make_decode_tables (TYPE_4__*) ;
 int make_decode_tables_mmx (TYPE_4__*) ;
 scalar_t__ mmxsse ;
 scalar_t__ neon ;
 scalar_t__ neon64 ;
 int r_1to1 ;
 int r_2to1 ;
 int r_4to1 ;
 int r_none ;
 int r_ntom ;
 scalar_t__ sse ;
 scalar_t__ sse_vintage ;
 int stub1 (TYPE_4__*) ;
 scalar_t__ x86_64 ;

int set_synth_functions(mpg123_handle *fr)
{
 enum synth_resample resample = r_none;
 enum synth_format basic_format = f_none;


 if(FALSE){}

 else if(fr->af.dec_enc & MPG123_ENC_16)
 basic_format = f_16;


 else if(fr->af.dec_enc & MPG123_ENC_8)
 basic_format = f_8;


 else if(fr->af.dec_enc & MPG123_ENC_FLOAT)
 basic_format = f_real;



 else if(fr->af.dec_enc & MPG123_ENC_32 || fr->af.dec_enc & MPG123_ENC_24)
 basic_format = f_32;



 if(basic_format == f_none)
 {
  if(NOQUIET) error("set_synth_functions: This output format is disabled in this build!");

  return -1;
 }


 switch(fr->down_sample)
 {
  case 0: resample = r_1to1; break;

  case 1: resample = r_2to1; break;
  case 2: resample = r_4to1; break;


  case 3: resample = r_ntom; break;

 }

 if(resample == r_none)
 {
  if(NOQUIET) error("set_synth_functions: This resampling mode is not supported in this build!");

  return -1;
 }

 debug2("selecting synth: resample=%i format=%i", resample, basic_format);

 fr->synth = fr->synths.plain[resample][basic_format];
 fr->synth_stereo = fr->synths.stereo[resample][basic_format];
 fr->synth_mono = fr->af.channels==2
  ? fr->synths.mono2stereo[resample][basic_format]
  : fr->synths.mono[resample][basic_format];

 if(find_dectype(fr) != MPG123_OK)
 {
  fr->err = MPG123_BAD_DECODER_SETUP;
  return MPG123_ERR;
 }

 if(frame_buffers(fr) != 0)
 {
  fr->err = MPG123_NO_BUFFERS;
  if(NOQUIET) error("Failed to set up decoder buffers!");

  return MPG123_ERR;
 }


 if(basic_format == f_8)
 {
  if(make_conv16to8_table(fr) != 0)
  {
   if(NOQUIET) error("Failed to set up conv16to8 table!");

   return -1;
  }
 }
 {

  init_layer3_stuff(fr, init_layer3_gainpow2);


  init_layer12_stuff(fr, init_layer12_table);

  fr->make_decode_tables = make_decode_tables;
 }


 fr->make_decode_tables(fr);

 return 0;
}
