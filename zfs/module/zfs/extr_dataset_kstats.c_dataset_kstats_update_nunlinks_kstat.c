
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int das_nunlinks; } ;
struct TYPE_5__ {TYPE_1__ dk_aggsums; int * dk_kstats; } ;
typedef TYPE_2__ dataset_kstats_t ;


 int aggsum_add (int *,int ) ;

void
dataset_kstats_update_nunlinks_kstat(dataset_kstats_t *dk, int64_t delta)
{
 if (dk->dk_kstats == ((void*)0))
  return;

 aggsum_add(&dk->dk_aggsums.das_nunlinks, delta);
}
