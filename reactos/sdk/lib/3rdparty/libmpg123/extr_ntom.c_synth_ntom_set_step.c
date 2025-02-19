
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long rate; } ;
struct TYPE_7__ {unsigned long ntom_step; int num; int * ntom_val; void* err; TYPE_1__ af; } ;
typedef TYPE_2__ mpg123_handle ;


 void* MPG123_BAD_RATE ;
 scalar_t__ NOQUIET ;
 scalar_t__ NTOM_MAX ;
 long NTOM_MAX_FREQ ;
 long NTOM_MUL ;
 scalar_t__ VERBOSE2 ;
 int error (char*) ;
 int error3 (char*,scalar_t__,unsigned long,unsigned long) ;
 int fprintf (int ,char*,long,long) ;
 long frame_freq (TYPE_2__*) ;
 int ntom_val (TYPE_2__*,int ) ;
 int stderr ;

int synth_ntom_set_step(mpg123_handle *fr)
{
 long m,n;
 m = frame_freq(fr);
 n = fr->af.rate;
 if(VERBOSE2)
  fprintf(stderr,"Init rate converter: %ld->%ld\n",m,n);

 if(n > NTOM_MAX_FREQ || m > NTOM_MAX_FREQ || m <= 0 || n <= 0) {
  if(NOQUIET) error("NtoM converter: illegal rates");
  fr->err = MPG123_BAD_RATE;
  return -1;
 }

 n *= NTOM_MUL;
 fr->ntom_step = (unsigned long) n / m;

 if(fr->ntom_step > (unsigned long)NTOM_MAX*NTOM_MUL) {
  if(NOQUIET) error3("max. 1:%i conversion allowed (%lu vs %lu)!", NTOM_MAX, fr->ntom_step, (unsigned long)8*NTOM_MUL);
  fr->err = MPG123_BAD_RATE;
  return -1;
 }

 fr->ntom_val[0] = fr->ntom_val[1] = ntom_val(fr, fr->num);
 return 0;
}
