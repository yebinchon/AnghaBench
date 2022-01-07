
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ trim_type_t ;
struct TYPE_8__ {TYPE_4__* kstat; } ;
struct TYPE_6__ {TYPE_3__ iostats; } ;
struct TYPE_7__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_iostats_t ;
typedef TYPE_3__ spa_history_kstat_t ;
struct TYPE_9__ {int * ks_data; } ;
typedef TYPE_4__ kstat_t ;


 int SPA_IOSTATS_ADD (int ,int ) ;
 scalar_t__ TRIM_TYPE_MANUAL ;
 int autotrim_bytes_failed ;
 int autotrim_bytes_skipped ;
 int autotrim_bytes_written ;
 int autotrim_extents_failed ;
 int autotrim_extents_skipped ;
 int autotrim_extents_written ;
 int trim_bytes_failed ;
 int trim_bytes_skipped ;
 int trim_bytes_written ;
 int trim_extents_failed ;
 int trim_extents_skipped ;
 int trim_extents_written ;

void
spa_iostats_trim_add(spa_t *spa, trim_type_t type,
    uint64_t extents_written, uint64_t bytes_written,
    uint64_t extents_skipped, uint64_t bytes_skipped,
    uint64_t extents_failed, uint64_t bytes_failed)
{
 spa_history_kstat_t *shk = &spa->spa_stats.iostats;
 kstat_t *ksp = shk->kstat;
 spa_iostats_t *iostats;

 if (ksp == ((void*)0))
  return;

 iostats = ksp->ks_data;
 if (type == TRIM_TYPE_MANUAL) {
  SPA_IOSTATS_ADD(trim_extents_written, extents_written);
  SPA_IOSTATS_ADD(trim_bytes_written, bytes_written);
  SPA_IOSTATS_ADD(trim_extents_skipped, extents_skipped);
  SPA_IOSTATS_ADD(trim_bytes_skipped, bytes_skipped);
  SPA_IOSTATS_ADD(trim_extents_failed, extents_failed);
  SPA_IOSTATS_ADD(trim_bytes_failed, bytes_failed);
 } else {
  SPA_IOSTATS_ADD(autotrim_extents_written, extents_written);
  SPA_IOSTATS_ADD(autotrim_bytes_written, bytes_written);
  SPA_IOSTATS_ADD(autotrim_extents_skipped, extents_skipped);
  SPA_IOSTATS_ADD(autotrim_bytes_skipped, bytes_skipped);
  SPA_IOSTATS_ADD(autotrim_extents_failed, extents_failed);
  SPA_IOSTATS_ADD(autotrim_bytes_failed, bytes_failed);
 }
}
