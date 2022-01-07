
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int empty_dataset_kstats ;
struct TYPE_8__ {int das_nunlinked; int das_nunlinks; int das_nread; int das_reads; int das_nwritten; int das_writes; } ;
struct TYPE_9__ {TYPE_1__ dk_aggsums; TYPE_4__* dk_kstats; } ;
typedef TYPE_2__ dataset_kstats_t ;
struct TYPE_10__ {int dkv_ds_name; } ;
typedef TYPE_3__ dataset_kstat_values_t ;
struct TYPE_11__ {TYPE_3__* ks_data; } ;


 int KSTAT_NAMED_STR_BUFLEN (int *) ;
 TYPE_3__* KSTAT_NAMED_STR_PTR (int *) ;
 int aggsum_fini (int *) ;
 int kmem_free (TYPE_3__*,int) ;
 int kstat_delete (TYPE_4__*) ;

void
dataset_kstats_destroy(dataset_kstats_t *dk)
{
 if (dk->dk_kstats == ((void*)0))
  return;

 dataset_kstat_values_t *dkv = dk->dk_kstats->ks_data;
 kmem_free(KSTAT_NAMED_STR_PTR(&dkv->dkv_ds_name),
     KSTAT_NAMED_STR_BUFLEN(&dkv->dkv_ds_name));
 kmem_free(dkv, sizeof (empty_dataset_kstats));

 kstat_delete(dk->dk_kstats);
 dk->dk_kstats = ((void*)0);

 aggsum_fini(&dk->dk_aggsums.das_writes);
 aggsum_fini(&dk->dk_aggsums.das_nwritten);
 aggsum_fini(&dk->dk_aggsums.das_reads);
 aggsum_fini(&dk->dk_aggsums.das_nread);
 aggsum_fini(&dk->dk_aggsums.das_nunlinks);
 aggsum_fini(&dk->dk_aggsums.das_nunlinked);
}
