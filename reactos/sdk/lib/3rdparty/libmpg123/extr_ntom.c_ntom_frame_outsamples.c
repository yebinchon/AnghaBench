
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int* ntom_val; int spf; int ntom_step; } ;
typedef TYPE_1__ mpg123_handle ;


 int NTOM_MUL ;

off_t ntom_frame_outsamples(mpg123_handle *fr)
{

 int ntm = fr->ntom_val[0];
 ntm += fr->spf*fr->ntom_step;
 return ntm/NTOM_MUL;
}
