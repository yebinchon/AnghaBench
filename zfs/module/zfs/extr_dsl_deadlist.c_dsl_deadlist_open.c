
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {void* dl_havecache; void* dl_havetree; TYPE_5__* dl_dbuf; int dl_phys; void* dl_oldfmt; int dl_bpobj; int dl_object; int * dl_os; int dl_lock; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_12__ {scalar_t__ doi_type; } ;
typedef TYPE_2__ dmu_object_info_t ;
struct TYPE_13__ {int db_data; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ DMU_OT_BPOBJ ;
 int MUTEX_DEFAULT ;
 int VERIFY0 (int ) ;
 int bpobj_open (int *,int *,int ) ;
 int dmu_bonus_hold (int *,int ,TYPE_1__*,TYPE_5__**) ;
 int dmu_buf_rele (TYPE_5__*,TYPE_1__*) ;
 int dmu_object_info_from_db (TYPE_5__*,TYPE_2__*) ;
 int dsl_deadlist_is_open (TYPE_1__*) ;
 int mutex_init (int *,int *,int ,int *) ;

void
dsl_deadlist_open(dsl_deadlist_t *dl, objset_t *os, uint64_t object)
{
 dmu_object_info_t doi;

 ASSERT(!dsl_deadlist_is_open(dl));

 mutex_init(&dl->dl_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 dl->dl_os = os;
 dl->dl_object = object;
 VERIFY0(dmu_bonus_hold(os, object, dl, &dl->dl_dbuf));
 dmu_object_info_from_db(dl->dl_dbuf, &doi);
 if (doi.doi_type == DMU_OT_BPOBJ) {
  dmu_buf_rele(dl->dl_dbuf, dl);
  dl->dl_dbuf = ((void*)0);
  dl->dl_oldfmt = B_TRUE;
  VERIFY0(bpobj_open(&dl->dl_bpobj, os, object));
  return;
 }

 dl->dl_oldfmt = B_FALSE;
 dl->dl_phys = dl->dl_dbuf->db_data;
 dl->dl_havetree = B_FALSE;
 dl->dl_havecache = B_FALSE;
}
