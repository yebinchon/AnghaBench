
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_6__ {int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef TYPE_2__ dmu_buf_t ;


 int DMU_READ_PREFETCH ;
 int FTAG ;
 int KM_SLEEP ;
 int dmu_bonus_hold (int ,size_t,int ,TYPE_2__**) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 int dmu_read (int ,size_t,int ,size_t,char*,int ) ;
 int nvlist_unpack (char*,size_t,int **,int ) ;
 char* vmem_alloc (size_t,int ) ;
 int vmem_free (char*,size_t) ;

__attribute__((used)) static int
load_nvlist(spa_t *spa, uint64_t obj, nvlist_t **value)
{
 dmu_buf_t *db;
 char *packed = ((void*)0);
 size_t nvsize = 0;
 int error;
 *value = ((void*)0);

 error = dmu_bonus_hold(spa->spa_meta_objset, obj, FTAG, &db);
 if (error)
  return (error);

 nvsize = *(uint64_t *)db->db_data;
 dmu_buf_rele(db, FTAG);

 packed = vmem_alloc(nvsize, KM_SLEEP);
 error = dmu_read(spa->spa_meta_objset, obj, 0, nvsize, packed,
     DMU_READ_PREFETCH);
 if (error == 0)
  error = nvlist_unpack(packed, nvsize, value, 0);
 vmem_free(packed, nvsize);

 return (error);
}
