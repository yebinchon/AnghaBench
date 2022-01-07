
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dec_enc; } ;
struct TYPE_5__ {unsigned char* conv16to8_buf; unsigned char* conv16to8; void* err; TYPE_1__ af; } ;
typedef TYPE_2__ mpg123_handle ;






 void* MPG123_ERR_16TO8TABLE ;
 scalar_t__ NOQUIET ;
 int error (char*) ;
 int error2 (char*,int,int) ;
 double log (double) ;
 scalar_t__ malloc (int) ;

int make_conv16to8_table(mpg123_handle *fr)
{
  int i;
 int mode = fr->af.dec_enc;




  const double mul = 8.0;

  if(!fr->conv16to8_buf){
    fr->conv16to8_buf = (unsigned char *) malloc(8192);
    if(!fr->conv16to8_buf) {
      fr->err = MPG123_ERR_16TO8TABLE;
      if(NOQUIET) error("Can't allocate 16 to 8 converter table!");
      return -1;
    }
    fr->conv16to8 = fr->conv16to8_buf + 4096;
  }

 switch(mode)
 {
 case 129:
 {
  double m=127.0 / log(256.0);
  int c1;

  for(i=-4096;i<4096;i++)
  {

   if(i < 0)
   c1 = 127 - (int) (log( 1.0 - 255.0 * (double) i*mul / 32768.0 ) * m);
   else
   c1 = 255 - (int) (log( 1.0 + 255.0 * (double) i*mul / 32768.0 ) * m);
   if(c1 < 0 || c1 > 255)
   {
    if(NOQUIET) error2("Converror %d %d",i,c1);
    return -1;
   }
   if(c1 == 0)
   c1 = 2;
   fr->conv16to8[i] = (unsigned char) c1;
  }
 }
 break;
 case 130:
  for(i=-4096;i<4096;i++)
  fr->conv16to8[i] = i>>5;
 break;
 case 128:
  for(i=-4096;i<4096;i++)
  fr->conv16to8[i] = (i>>5)+128;
 break;
 case 131:
 {
  for(i=0; i<64; ++i)
  fr->conv16to8[i] = ((unsigned int)i)>>1;
  for(i=64; i<128; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>2) & 0xf) | (2<<4);
  for(i=128; i<256; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>3) & 0xf) | (3<<4);
  for(i=256; i<512; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>4) & 0xf) | (4<<4);
  for(i=512; i<1024; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>5) & 0xf) | (5<<4);
  for(i=1024; i<2048; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>6) & 0xf) | (6<<4);
  for(i=2048; i<4096; ++i)
  fr->conv16to8[i] = ((((unsigned int)i)>>7) & 0xf) | (7<<4);

  for(i=-4095; i<0; ++i)
  fr->conv16to8[i] = fr->conv16to8[-i] | 0x80;

  fr->conv16to8[-4096] = fr->conv16to8[-4095];

  for(i=-4096;i<4096;i++)
  {


   fr->conv16to8[i] ^= 0x55;
  }
 }
 break;
 default:
  fr->err = MPG123_ERR_16TO8TABLE;
  if(NOQUIET) error("Unknown 8 bit encoding choice.");
  return -1;
 break;
 }

 return 0;
}
