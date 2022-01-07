
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ ds_reserved; scalar_t__ ds_quota; int ds_bp_rwlock; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ ds_referenced_bytes; scalar_t__ ds_unique_bytes; int ds_bp; } ;


 scalar_t__ BP_GET_FILL (int *) ;
 scalar_t__ DN_MAX_OBJECT ;
 int FTAG ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int RW_READER ;
 int TRUE ;
 TYPE_3__* dsl_dataset_phys (TYPE_1__*) ;
 scalar_t__ dsl_dir_space_available (int ,int *,int ,int ) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;

void
dsl_dataset_space(dsl_dataset_t *ds,
    uint64_t *refdbytesp, uint64_t *availbytesp,
    uint64_t *usedobjsp, uint64_t *availobjsp)
{
 *refdbytesp = dsl_dataset_phys(ds)->ds_referenced_bytes;
 *availbytesp = dsl_dir_space_available(ds->ds_dir, ((void*)0), 0, TRUE);
 if (ds->ds_reserved > dsl_dataset_phys(ds)->ds_unique_bytes)
  *availbytesp +=
      ds->ds_reserved - dsl_dataset_phys(ds)->ds_unique_bytes;
 if (ds->ds_quota != 0) {



  if (*refdbytesp < ds->ds_quota)
   *availbytesp = MIN(*availbytesp,
       ds->ds_quota - *refdbytesp);
  else
   *availbytesp = 0;
 }
 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 *usedobjsp = BP_GET_FILL(&dsl_dataset_phys(ds)->ds_bp);
 rrw_exit(&ds->ds_bp_rwlock, FTAG);
 *availobjsp = DN_MAX_OBJECT - *usedobjsp;
}
