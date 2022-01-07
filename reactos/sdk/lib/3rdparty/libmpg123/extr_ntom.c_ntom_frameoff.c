
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int spf; int ntom_step; } ;
typedef TYPE_1__ mpg123_handle ;


 int NTOM_MUL ;
 int ntom_val (TYPE_1__*,int ) ;

off_t ntom_frameoff(mpg123_handle *fr, off_t soff)
{
 off_t ioff = 0;
 off_t ntm = ntom_val(fr,0);
 ioff = (soff*(off_t)NTOM_MUL-ntm)/(off_t)fr->ntom_step;
 return ioff/(off_t)fr->spf;

}
