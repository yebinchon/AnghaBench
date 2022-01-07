
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_3__ {scalar_t__ spf; scalar_t__ ntom_step; } ;
typedef TYPE_1__ mpg123_handle ;


 int NTOM_MUL ;

unsigned long ntom_val(mpg123_handle *fr, off_t frame)
{
 off_t ntm;
 ntm = (NTOM_MUL>>1) + fr->spf*frame*fr->ntom_step;
 ntm -= (ntm/NTOM_MUL)*NTOM_MUL;

 return (unsigned long) ntm;
}
