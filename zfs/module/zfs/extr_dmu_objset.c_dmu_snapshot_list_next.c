
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_13__ {int za_normalization_conflict; int za_first_integer; int za_name; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_14__ {TYPE_5__* os_dsl_dataset; } ;
typedef TYPE_4__ objset_t ;
struct TYPE_15__ {TYPE_2__* ds_dir; } ;
typedef TYPE_5__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_16__ {scalar_t__ ds_snapnames_zapobj; } ;
struct TYPE_12__ {TYPE_1__* dd_pool; } ;
struct TYPE_11__ {int dp_meta_objset; } ;


 int ASSERT (int ) ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int dmu_objset_pool (TYPE_4__*) ;
 TYPE_7__* dsl_dataset_phys (TYPE_5__*) ;
 int dsl_pool_config_held (int ) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_serialized (int *,int ,scalar_t__,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zap_cursor_serialize (int *) ;

int
dmu_snapshot_list_next(objset_t *os, int namelen, char *name,
    uint64_t *idp, uint64_t *offp, boolean_t *case_conflict)
{
 dsl_dataset_t *ds = os->os_dsl_dataset;
 zap_cursor_t cursor;
 zap_attribute_t attr;

 ASSERT(dsl_pool_config_held(dmu_objset_pool(os)));

 if (dsl_dataset_phys(ds)->ds_snapnames_zapobj == 0)
  return (SET_ERROR(ENOENT));

 zap_cursor_init_serialized(&cursor,
     ds->ds_dir->dd_pool->dp_meta_objset,
     dsl_dataset_phys(ds)->ds_snapnames_zapobj, *offp);

 if (zap_cursor_retrieve(&cursor, &attr) != 0) {
  zap_cursor_fini(&cursor);
  return (SET_ERROR(ENOENT));
 }

 if (strlen(attr.za_name) + 1 > namelen) {
  zap_cursor_fini(&cursor);
  return (SET_ERROR(ENAMETOOLONG));
 }

 (void) strcpy(name, attr.za_name);
 if (idp)
  *idp = attr.za_first_integer;
 if (case_conflict)
  *case_conflict = attr.za_normalization_conflict;
 zap_cursor_advance(&cursor);
 *offp = zap_cursor_serialize(&cursor);
 zap_cursor_fini(&cursor);

 return (0);
}
