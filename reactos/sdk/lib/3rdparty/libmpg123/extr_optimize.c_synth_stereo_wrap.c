
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int real ;
struct TYPE_5__ {int (* synth ) (int *,int,TYPE_1__*,int) ;} ;
typedef TYPE_1__ mpg123_handle ;


 int stub1 (int *,int,TYPE_1__*,int) ;
 int stub2 (int *,int,TYPE_1__*,int) ;

__attribute__((used)) static int synth_stereo_wrap(real *bandPtr_l, real *bandPtr_r, mpg123_handle *fr)
{
 int clip;
 clip = (fr->synth)(bandPtr_l, 0, fr, 0);
 clip += (fr->synth)(bandPtr_r, 1, fr, 1);
 return clip;
}
