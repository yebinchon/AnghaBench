
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt2tctx; scalar_t__ attached; } ;
typedef TYPE_1__ prof_tdata_t ;


 scalar_t__ ckh_count (int *) ;

__attribute__((used)) static bool
prof_tdata_should_destroy_unlocked(prof_tdata_t *tdata, bool even_if_attached) {
 if (tdata->attached && !even_if_attached) {
  return 0;
 }
 if (ckh_count(&tdata->bt2tctx) != 0) {
  return 0;
 }
 return 1;
}
