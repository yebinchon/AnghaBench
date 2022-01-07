
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int drc_raw; int drc_newsnapobj; int * drc_guid_to_ds_map; int drc_tofs; int drc_keynvl; scalar_t__ drc_newfs; void* drc_owner; } ;
typedef TYPE_1__ dmu_recv_cookie_t ;


 int add_ds_to_guidmap (int ,int *,int ,int ) ;
 int dmu_recv_cleanup_ds (TYPE_1__*) ;
 int dmu_recv_existing_end (TYPE_1__*) ;
 int dmu_recv_new_end (TYPE_1__*) ;
 int nvlist_free (int ) ;

int
dmu_recv_end(dmu_recv_cookie_t *drc, void *owner)
{
 int error;

 drc->drc_owner = owner;

 if (drc->drc_newfs)
  error = dmu_recv_new_end(drc);
 else
  error = dmu_recv_existing_end(drc);

 if (error != 0) {
  dmu_recv_cleanup_ds(drc);
  nvlist_free(drc->drc_keynvl);
 } else if (drc->drc_guid_to_ds_map != ((void*)0)) {
  (void) add_ds_to_guidmap(drc->drc_tofs, drc->drc_guid_to_ds_map,
      drc->drc_newsnapobj, drc->drc_raw);
 }
 return (error);
}
