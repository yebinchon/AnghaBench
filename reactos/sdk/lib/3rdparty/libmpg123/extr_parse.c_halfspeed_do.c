
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ halfspeed; } ;
struct TYPE_6__ {unsigned char* wordpointer; int lay; TYPE_1__ p; scalar_t__ halfphase; int crc; scalar_t__ error_protection; int ssize; int ssave; scalar_t__ bsbuf; scalar_t__ bitindex; int to_ignore; int to_decode; } ;
typedef TYPE_2__ mpg123_handle ;


 int TRUE ;
 int debug (char*) ;
 int getbits (TYPE_2__*,int) ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static int halfspeed_do(mpg123_handle *fr)
{

 if (fr->p.halfspeed)
 {
  if(fr->halfphase)
  {
   debug("repeat!");
   fr->to_decode = fr->to_ignore = TRUE;
   --fr->halfphase;
   fr->bitindex = 0;
   fr->wordpointer = (unsigned char *) fr->bsbuf;
   if(fr->lay == 3) memcpy (fr->bsbuf, fr->ssave, fr->ssize);
   if(fr->error_protection) fr->crc = getbits(fr, 16);
   return 1;
  }
  else
  {
   fr->halfphase = fr->p.halfspeed - 1;
  }
 }
 return 0;
}
