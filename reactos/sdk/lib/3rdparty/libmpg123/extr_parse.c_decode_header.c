
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lay; int lsf; int mpeg25; size_t sampling_frequency; int error_protection; size_t bitrate_index; long padding; scalar_t__ mode; int freeformat; int stereo; scalar_t__ freeformat_framesize; long framesize; int spf; int ssize; int do_layer; int emphasis; int original; int copyright; int mode_ext; int extension; } ;
typedef TYPE_1__ mpg123_handle ;


 unsigned long HDR_BITRATE ;
 size_t HDR_BITRATE_VAL (unsigned long) ;
 int HDR_CHANEX_VAL (unsigned long) ;
 scalar_t__ HDR_CHANNEL_VAL (unsigned long) ;
 int HDR_COPYRIGHT_VAL (unsigned long) ;
 int HDR_CRC_VAL (unsigned long) ;
 int HDR_EMPHASIS_VAL (unsigned long) ;
 int HDR_LAYER_VAL (unsigned long) ;
 int HDR_ORIGINAL_VAL (unsigned long) ;
 long HDR_PADDING_VAL (unsigned long) ;
 int HDR_PRIVATE_VAL (unsigned long) ;
 void* HDR_SAMPLERATE_VAL (unsigned long) ;
 int HDR_VERSION_VAL (unsigned long) ;
 scalar_t__ MAXFRAMESIZE ;
 int MPG123_NEED_MORE ;
 scalar_t__ MPG_MD_MONO ;
 scalar_t__ NOQUIET ;
 int PARSE_BAD ;
 int PARSE_GOOD ;
 scalar_t__ VERBOSE2 ;
 scalar_t__ VERBOSE3 ;
 int debug (char*) ;
 int debug2 (char*,size_t,scalar_t__) ;
 int do_layer1 ;
 int do_layer2 ;
 int do_layer3 ;
 int error (char*) ;
 int error1 (char*,unsigned long) ;
 int fprintf (int ,char*,long) ;
 int* freqs ;
 int guess_freeformat_framesize (TYPE_1__*,unsigned long) ;
 int head_check (unsigned long) ;
 int stderr ;
 scalar_t__*** tabsel_123 ;

__attribute__((used)) static int decode_header(mpg123_handle *fr,unsigned long newhead, int *freeformat_count)
{
 fr->lay = 4 - HDR_LAYER_VAL(newhead);

 if(HDR_VERSION_VAL(newhead) & 0x2)
 {
  fr->lsf = (HDR_VERSION_VAL(newhead) & 0x1) ? 0 : 1;
  fr->mpeg25 = 0;
  fr->sampling_frequency = HDR_SAMPLERATE_VAL(newhead) + (fr->lsf*3);
 }
 else
 {
  fr->lsf = 1;
  fr->mpeg25 = 1;
  fr->sampling_frequency = 6 + HDR_SAMPLERATE_VAL(newhead);
 }





 fr->error_protection = HDR_CRC_VAL(newhead)^0x1;
 fr->bitrate_index = HDR_BITRATE_VAL(newhead);
 fr->padding = HDR_PADDING_VAL(newhead);
 fr->extension = HDR_PRIVATE_VAL(newhead);
 fr->mode = HDR_CHANNEL_VAL(newhead);
 fr->mode_ext = HDR_CHANEX_VAL(newhead);
 fr->copyright = HDR_COPYRIGHT_VAL(newhead);
 fr->original = HDR_ORIGINAL_VAL(newhead);
 fr->emphasis = HDR_EMPHASIS_VAL(newhead);
 fr->freeformat = !(newhead & HDR_BITRATE);

 fr->stereo = (fr->mode == MPG_MD_MONO) ? 1 : 2;


 if(fr->freeformat)
 {

  if(fr->freeformat_framesize < 0)
  {
   int ret;
   *freeformat_count += 1;
   if(*freeformat_count > 5)
   {
    if(VERBOSE3) error("You fooled me too often. Refusing to guess free format frame size _again_.");
    return PARSE_BAD;
   }
   ret = guess_freeformat_framesize(fr, newhead);
   if(ret == PARSE_GOOD)
   {
    fr->freeformat_framesize = fr->framesize - fr->padding;
    if(VERBOSE2)
    fprintf(stderr, "Note: free format frame size %li\n", fr->freeformat_framesize);
   }
   else
   {
    if(ret == MPG123_NEED_MORE)
    debug("Need more data to guess free format frame size.");
    else if(VERBOSE3)
    error("Encountered free format header, but failed to guess frame size.");

    return ret;
   }
  }

  else
  {
   fr->framesize = fr->freeformat_framesize + fr->padding;
  }
 }

 switch(fr->lay)
 {

  case 1:
   fr->spf = 384;
   fr->do_layer = do_layer1;
   if(!fr->freeformat)
   {
    fr->framesize = (long) tabsel_123[fr->lsf][0][fr->bitrate_index] * 12000;
    fr->framesize /= freqs[fr->sampling_frequency];
    fr->framesize = ((fr->framesize+fr->padding)<<2)-4;
   }
  break;


  case 2:
   fr->spf = 1152;
   fr->do_layer = do_layer2;
   if(!fr->freeformat)
   {
    debug2("bitrate index: %i (%i)", fr->bitrate_index, tabsel_123[fr->lsf][1][fr->bitrate_index] );
    fr->framesize = (long) tabsel_123[fr->lsf][1][fr->bitrate_index] * 144000;
    fr->framesize /= freqs[fr->sampling_frequency];
    fr->framesize += fr->padding - 4;
   }
  break;


  case 3:
   fr->spf = fr->lsf ? 576 : 1152;
   fr->do_layer = do_layer3;
   if(fr->lsf)
   fr->ssize = (fr->stereo == 1) ? 9 : 17;
   else
   fr->ssize = (fr->stereo == 1) ? 17 : 32;

   if(fr->error_protection)
   fr->ssize += 2;

   if(!fr->freeformat)
   {
    fr->framesize = (long) tabsel_123[fr->lsf][2][fr->bitrate_index] * 144000;
    fr->framesize /= freqs[fr->sampling_frequency]<<(fr->lsf);
    fr->framesize = fr->framesize + fr->padding - 4;
   }
  break;

  default:
   if(NOQUIET) error1("Layer type %i not supported in this build!", fr->lay);

   return PARSE_BAD;
 }
 if (fr->framesize > MAXFRAMESIZE)
 {
  if(NOQUIET) error1("Frame size too big: %d", fr->framesize+4-fr->padding);

  return PARSE_BAD;
 }
 return PARSE_GOOD;
}
