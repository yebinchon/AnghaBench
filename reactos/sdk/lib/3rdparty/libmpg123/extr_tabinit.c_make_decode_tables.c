
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int real ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {double outscale; } ;
struct TYPE_7__ {double lastscale; void** decwin; TYPE_2__ cpu_opts; TYPE_1__ p; } ;
typedef TYPE_3__ mpg123_handle ;


 void* DOUBLE_TO_REAL (double) ;
 int DOUBLE_TO_REAL_15 (double) ;
 scalar_t__ NOQUIET ;
 void* REAL_SCALE_WINDOW (int ) ;
 scalar_t__ altivec ;
 scalar_t__ arm ;
 scalar_t__ avx ;
 int debug (char*) ;
 int debug1 (char*,long) ;
 scalar_t__* intwinbase ;
 scalar_t__ neon ;
 scalar_t__ neon64 ;
 int sat_mul32 (scalar_t__,int) ;
 scalar_t__ sse ;
 scalar_t__ sse_vintage ;
 int warning (char*) ;
 scalar_t__ x86_64 ;

void make_decode_tables(mpg123_handle *fr)
{
 int i,j;
 int idx = 0;
 double scaleval;




 scaleval = -0.5*(fr->lastscale < 0 ? fr->p.outscale : fr->lastscale);
 debug1("decode tables with scaleval %g", scaleval);
 for(i=0,j=0;i<256;i++,j++,idx+=32)
 {
  if(idx < 512+16)




  fr->decwin[idx+16] = fr->decwin[idx] = DOUBLE_TO_REAL((double) intwinbase[j] * scaleval);


  if(i % 32 == 31)
  idx -= 1023;
  if(i % 64 == 63)



  scaleval = - scaleval;

 }

 for( ;i<512;i++,j--,idx+=32)
 {
  if(idx < 512+16)




  fr->decwin[idx+16] = fr->decwin[idx] = DOUBLE_TO_REAL((double) intwinbase[j] * scaleval);


  if(i % 32 == 31)
  idx -= 1023;
  if(i % 64 == 63)



  scaleval = - scaleval;

 }
 debug("decode tables done");
}
