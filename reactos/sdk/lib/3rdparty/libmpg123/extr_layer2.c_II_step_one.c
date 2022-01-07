
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct al_table {int bits; } ;
struct TYPE_5__ {int stereo; int II_sblimit; int jsbound; struct al_table* alloc; } ;
typedef TYPE_1__ mpg123_handle ;


 scalar_t__ getbits (TYPE_1__*,int) ;
 void* getbits_fast (TYPE_1__*,int) ;

__attribute__((used)) static void II_step_one(unsigned int *bit_alloc,int *scale,mpg123_handle *fr)
{
 int stereo = fr->stereo-1;
 int sblimit = fr->II_sblimit;
 int jsbound = fr->jsbound;
 int sblimit2 = fr->II_sblimit<<stereo;
 const struct al_table *alloc1 = fr->alloc;
 int i;
 unsigned int scfsi_buf[64];
 unsigned int *scfsi,*bita;
 int sc,step;

 bita = bit_alloc;
 if(stereo)
 {
  for(i=jsbound;i;i--,alloc1+=(1<<step))
  {
   step=alloc1->bits;
   *bita++ = (char) getbits(fr, step);
   *bita++ = (char) getbits(fr, step);
  }
  for(i=sblimit-jsbound;i;i--,alloc1+=(1<<step))
  {
   step=alloc1->bits;
   bita[0] = (char) getbits(fr, step);
   bita[1] = bita[0];
   bita+=2;
  }
  bita = bit_alloc;
  scfsi=scfsi_buf;

  for(i=sblimit2;i;i--)
  if(*bita++) *scfsi++ = (char) getbits_fast(fr, 2);
 }
 else
 {
  for(i=sblimit;i;i--,alloc1+=(1<<step))
  {
   step=alloc1->bits;
   *bita++ = (char) getbits(fr, step);
  }
  bita = bit_alloc;
  scfsi=scfsi_buf;
  for(i=sblimit;i;i--)
  if(*bita++) *scfsi++ = (char) getbits_fast(fr, 2);
 }

 bita = bit_alloc;
 scfsi=scfsi_buf;
 for(i=sblimit2;i;i--)
 if(*bita++)
 switch(*scfsi++)
 {
  case 0:
   *scale++ = getbits_fast(fr, 6);
   *scale++ = getbits_fast(fr, 6);
   *scale++ = getbits_fast(fr, 6);
  break;
  case 1 :
   *scale++ = sc = getbits_fast(fr, 6);
   *scale++ = sc;
   *scale++ = getbits_fast(fr, 6);
  break;
  case 2:
   *scale++ = sc = getbits_fast(fr, 6);
   *scale++ = sc;
   *scale++ = sc;
  break;
  default:
   *scale++ = getbits_fast(fr, 6);
   *scale++ = sc = getbits_fast(fr, 6);
   *scale++ = sc;
  break;
 }
}
