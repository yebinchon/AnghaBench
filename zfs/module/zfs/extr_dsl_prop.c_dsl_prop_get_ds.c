
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_8__ {int ds_is_snapshot; TYPE_3__* ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_11__ {scalar_t__ ds_props_obj; } ;
struct TYPE_10__ {int * dp_meta_objset; } ;
struct TYPE_9__ {TYPE_4__* dd_pool; } ;


 int ASSERT (int ) ;
 int ENOENT ;
 int ZPROP_INHERIT_SUFFIX ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_RECVD_SUFFIX ;
 int ZPROP_SOURCE_VAL_RECVD ;
 int dsl_dataset_name (TYPE_1__*,char*) ;
 TYPE_5__* dsl_dataset_phys (TYPE_1__*) ;
 int dsl_pool_config_held (TYPE_4__*) ;
 int dsl_prop_get_dd (TYPE_3__*,char const*,int,int,void*,char*,int ) ;
 char* kmem_asprintf (char*,char const*,int ) ;
 int kmem_strfree (char*) ;
 int strcpy (char*,int ) ;
 int zap_contains (int *,scalar_t__,char*) ;
 int zap_lookup (int *,scalar_t__,char const*,int,int,void*) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_inheritable (scalar_t__) ;

int
dsl_prop_get_ds(dsl_dataset_t *ds, const char *propname,
    int intsz, int numints, void *buf, char *setpoint)
{
 zfs_prop_t prop = zfs_name_to_prop(propname);
 boolean_t inheritable;
 uint64_t zapobj;

 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));
 inheritable = (prop == ZPROP_INVAL || zfs_prop_inheritable(prop));
 zapobj = dsl_dataset_phys(ds)->ds_props_obj;

 if (zapobj != 0) {
  objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
  int err;

  ASSERT(ds->ds_is_snapshot);


  err = zap_lookup(mos, zapobj, propname, intsz, numints, buf);
  if (err != ENOENT) {
   if (setpoint != ((void*)0) && err == 0)
    dsl_dataset_name(ds, setpoint);
   return (err);
  }





  if (inheritable) {
   char *inheritstr = kmem_asprintf("%s%s", propname,
       ZPROP_INHERIT_SUFFIX);
   err = zap_contains(mos, zapobj, inheritstr);
   kmem_strfree(inheritstr);
   if (err != 0 && err != ENOENT)
    return (err);
  }

  if (err == ENOENT) {

   char *recvdstr = kmem_asprintf("%s%s", propname,
       ZPROP_RECVD_SUFFIX);
   err = zap_lookup(mos, zapobj, recvdstr,
       intsz, numints, buf);
   kmem_strfree(recvdstr);
   if (err != ENOENT) {
    if (setpoint != ((void*)0) && err == 0)
     (void) strcpy(setpoint,
         ZPROP_SOURCE_VAL_RECVD);
    return (err);
   }
  }
 }

 return (dsl_prop_get_dd(ds->ds_dir, propname,
     intsz, numints, buf, setpoint, ds->ds_is_snapshot));
}
