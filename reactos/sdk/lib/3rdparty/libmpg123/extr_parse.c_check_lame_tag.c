
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__* level; float* gain; scalar_t__* peak; } ;
struct TYPE_8__ {int filelen; } ;
struct TYPE_11__ {int stereo; int framesize; char* bsbuf; scalar_t__ vbr; scalar_t__ audio_start; int abr_rate; int** bsspace; size_t bsnum; scalar_t__ track_frames; TYPE_3__ p; TYPE_2__ rva; TYPE_1__ rdat; scalar_t__ lsf; } ;
typedef TYPE_4__ mpg123_handle ;


 scalar_t__ MPG123_ABR ;
 scalar_t__ MPG123_CBR ;
 int MPG123_GAPLESS ;
 int MPG123_IGNORE_INFOFRAME ;
 int MPG123_IGNORE_STREAMLENGTH ;
 void* MPG123_VBR ;
 scalar_t__ NOQUIET ;
 unsigned long TRACK_MAX_FRAMES ;
 scalar_t__ VERBOSE2 ;
 scalar_t__ VERBOSE3 ;
 unsigned long bit_read_long (char*,int*) ;
 int bit_read_short (int*,int*) ;
 int check_bytes_left (int) ;
 int debug (char*) ;
 int debug1 (char*,unsigned long) ;
 int debug3 (char*,unsigned int,unsigned int,char*) ;
 int fprintf (int ,char*,...) ;
 int frame_fill_toc (TYPE_4__*,char*) ;
 int frame_gapless_init (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (char*,char*,int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,char*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int check_lame_tag(mpg123_handle *fr)
{
 int i;
 unsigned long xing_flags;
 unsigned long long_tmp;






 int lame_offset = (fr->stereo == 2)
 ? (fr->lsf ? 17 : 32)
 : (fr->lsf ? 9 : 17);

 if(fr->p.flags & MPG123_IGNORE_INFOFRAME) goto check_lame_tag_no;

 debug("do we have lame tag?");







 if(fr->framesize < lame_offset+8) goto check_lame_tag_no;


 for(i=2; i < lame_offset; ++i) if(fr->bsbuf[i] != 0) goto check_lame_tag_no;

 debug("possibly...");
 if
 (
     (fr->bsbuf[lame_offset] == 'I')
  && (fr->bsbuf[lame_offset+1] == 'n')
  && (fr->bsbuf[lame_offset+2] == 'f')
  && (fr->bsbuf[lame_offset+3] == 'o')
 )
 {

 }
 else if
 (
     (fr->bsbuf[lame_offset] == 'X')
  && (fr->bsbuf[lame_offset+1] == 'i')
  && (fr->bsbuf[lame_offset+2] == 'n')
  && (fr->bsbuf[lame_offset+3] == 'g')
 )
 {
  fr->vbr = MPG123_VBR;
 }
 else goto check_lame_tag_no;


 if(VERBOSE2) fprintf(stderr, "Note: Xing/Lame/Info header detected\n");
 lame_offset += 4;
 xing_flags = bit_read_long(fr->bsbuf, &lame_offset);
 debug1("Xing: flags 0x%08lx", xing_flags);





 if(xing_flags & 1)
 {
  if(fr->framesize < lame_offset+4) goto check_lame_tag_yes; long_tmp = bit_read_long(fr->bsbuf, &lame_offset);
  if(fr->p.flags & MPG123_IGNORE_STREAMLENGTH)
  {
   if(VERBOSE3) fprintf(stderr
   , "Note: Ignoring Xing frames because of MPG123_IGNORE_STREAMLENGTH\n");
  }
  else
  {

   fr->track_frames = long_tmp > TRACK_MAX_FRAMES ? 0 : (off_t) long_tmp;






   if(VERBOSE3) fprintf(stderr, "Note: Xing: %lu frames\n", long_tmp);
  }
 }
 if(xing_flags & 0x2)
 {
  if(fr->framesize < lame_offset+4) goto check_lame_tag_yes; long_tmp = bit_read_long(fr->bsbuf, &lame_offset);
  if(fr->p.flags & MPG123_IGNORE_STREAMLENGTH)
  {
   if(VERBOSE3) fprintf(stderr
   , "Note: Ignoring Xing bytes because of MPG123_IGNORE_STREAMLENGTH\n");
  }
  else
  {




   if(fr->rdat.filelen < 1)
   fr->rdat.filelen = (off_t) long_tmp + fr->audio_start;
   else
   {
    if((off_t)long_tmp != fr->rdat.filelen - fr->audio_start && NOQUIET)
    {
     double diff = 100.0/fr->rdat.filelen
                 * ( fr->rdat.filelen - fr->audio_start
                     - (off_t)long_tmp );
     if(diff < 0.) diff = -diff;

     if(VERBOSE3) fprintf(stderr
     , "Note: Xing stream size %lu differs by %f%% from determined/given file size!\n"
     , long_tmp, diff);

     if(diff > 1. && NOQUIET) fprintf(stderr
     , "Warning: Xing stream size off by more than 1%%, fuzzy seeking may be even more fuzzy than by design!\n");
    }
   }

   if(VERBOSE3) fprintf(stderr, "Note: Xing: %lu bytes\n", long_tmp);
  }
 }
 if(xing_flags & 0x4)
 {
  if(fr->framesize < lame_offset+100) goto check_lame_tag_yes;
  frame_fill_toc(fr, fr->bsbuf+lame_offset);
  lame_offset += 100;
 }
 if(xing_flags & 0x8)
 {
  if(fr->framesize < lame_offset+4) goto check_lame_tag_yes; long_tmp = bit_read_long(fr->bsbuf, &lame_offset);
  if(VERBOSE3) fprintf(stderr, "Note: Xing: quality = %lu\n", long_tmp);
 }
 if(fr->framesize < lame_offset+24) goto check_lame_tag_yes;
 if(fr->bsbuf[lame_offset] != 0)
 {
  unsigned char lame_vbr;
  float replay_gain[2] = {0,0};
  float peak = 0;
  float gain_offset = 0;
  char nb[10];
  off_t pad_in;
  off_t pad_out;
  memcpy(nb, fr->bsbuf+lame_offset, 9);
  nb[9] = 0;
  if(VERBOSE3) fprintf(stderr, "Note: Info: Encoder: %s\n", nb);
  if(!strncmp("LAME", nb, 4))
  {



   unsigned int major, minor;
   char rest[6];
   rest[0] = 0;
   if(sscanf(nb+4, "%u.%u%s", &major, &minor, rest) >= 2)
   {
    debug3("LAME: %u/%u/%s", major, minor, rest);



    if(major < 3 || (major == 3 && minor < 95))
    {
     gain_offset = 6;
     if(VERBOSE3) fprintf(stderr
     , "Note: Info: Old LAME detected, using ReplayGain preamp of %f dB.\n"
     , gain_offset);
    }
   }
   else if(VERBOSE3) fprintf(stderr
   , "Note: Info: Cannot determine LAME version.\n");
  }
  lame_offset += 9;


  lame_vbr = fr->bsbuf[lame_offset] & 15;
  lame_offset += 1;
  if(VERBOSE3)
  {
   fprintf(stderr, "Note: Info: rev %u\n", fr->bsbuf[lame_offset] >> 4);
   fprintf(stderr, "Note: Info: vbr mode %u\n", lame_vbr);
  }
  switch(lame_vbr)
  {

   case 1:
   case 8: fr->vbr = MPG123_CBR; break;
   case 2:
   case 9: fr->vbr = MPG123_ABR; break;
   default: fr->vbr = MPG123_VBR;
  }
  lame_offset += 1;




  if
  (
      (fr->bsbuf[lame_offset] != 0)
   || (fr->bsbuf[lame_offset+1] != 0)
   || (fr->bsbuf[lame_offset+2] != 0)
   || (fr->bsbuf[lame_offset+3] != 0)
  )
  {
   debug("Wow! Is there _really_ a non-zero peak value? Now is it stored as float or int - how should I know?");




  }
  if(VERBOSE3) fprintf(stderr
  , "Note: Info: peak = %f (I won't use this)\n", peak);
  peak = 0;
  lame_offset += 4;







  for(i =0; i < 2; ++i)
  {
   unsigned char gt = fr->bsbuf[lame_offset] >> 5;
   unsigned char origin = (fr->bsbuf[lame_offset] >> 2) & 0x7;
   float factor = (fr->bsbuf[lame_offset] & 0x2) ? -0.1f : 0.1f;
   unsigned short gain = bit_read_short(fr->bsbuf, &lame_offset) & 0x1ff;
   if(origin == 0 || gt < 1 || gt > 2) continue;

   --gt;
   replay_gain[gt] = factor * (float) gain;

   if(origin == 3) replay_gain[gt] += gain_offset;
  }
  if(VERBOSE3)
  {
   fprintf(stderr, "Note: Info: Radio Gain = %03.1fdB\n"
   , replay_gain[0]);
   fprintf(stderr, "Note: Info: Audiophile Gain = %03.1fdB\n"
   , replay_gain[1]);
  }
  for(i=0; i < 2; ++i)
  {
   if(fr->rva.level[i] <= 0)
   {
    fr->rva.peak[i] = 0;
    fr->rva.gain[i] = replay_gain[i];
    fr->rva.level[i] = 0;
   }
  }

  lame_offset += 1;


  if(fr->vbr == MPG123_ABR)
  {
   fr->abr_rate = fr->bsbuf[lame_offset];
   if(VERBOSE3) fprintf(stderr, "Note: Info: ABR rate = %u\n"
   , fr->abr_rate);
  }
  lame_offset += 1;



  pad_in = ( (((int) fr->bsbuf[lame_offset]) << 4)
            | (((int) fr->bsbuf[lame_offset+1]) >> 4) );
  pad_out = ( (((int) fr->bsbuf[lame_offset+1]) << 8)
            | ((int) fr->bsbuf[lame_offset+2]) ) & 0xfff;
  lame_offset += 3;
  if(VERBOSE3) fprintf(stderr, "Note: Encoder delay = %i; padding = %i\n"
  , (int)pad_in, (int)pad_out);





 }

check_lame_tag_yes:

 fr->bsbuf = fr->bsspace[fr->bsnum]+512;
 fr->bsnum = (fr->bsnum + 1) & 1;
 return 1;
check_lame_tag_no:
 return 0;
}
