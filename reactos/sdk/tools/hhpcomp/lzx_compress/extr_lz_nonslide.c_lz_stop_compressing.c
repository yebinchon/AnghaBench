
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop; } ;
typedef TYPE_1__ lz_info ;



void lz_stop_compressing(lz_info *lzi)
{
  lzi->stop = 1;

}
