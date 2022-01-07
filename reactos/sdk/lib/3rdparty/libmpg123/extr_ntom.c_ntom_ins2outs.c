
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ spf; scalar_t__ ntom_step; } ;
typedef TYPE_1__ mpg123_handle ;


 scalar_t__ NTOM_MUL ;
 scalar_t__ ntom_val (TYPE_1__*,int ) ;

off_t ntom_ins2outs(mpg123_handle *fr, off_t ins)
{
 off_t soff = 0;
 off_t ntm = ntom_val(fr,0);
 soff = ((off_t)ntm + (off_t)ins*(off_t)fr->ntom_step)/(off_t)NTOM_MUL;

 return soff;
}
