
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef int objset_t ;
struct TYPE_7__ {struct TYPE_7__* dd_parent; TYPE_3__* dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int boolean_t ;
struct TYPE_9__ {int dd_props_zapobj; } ;
struct TYPE_8__ {int * dp_meta_objset; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int ENOENT ;
 int SET_ERROR (int) ;
 int ZPROP_INHERIT_SUFFIX ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_RECVD_SUFFIX ;
 int ZPROP_SOURCE_VAL_RECVD ;
 int dodefault (scalar_t__,int,int,void*) ;
 int dsl_dir_name (TYPE_1__*,char*) ;
 TYPE_4__* dsl_dir_phys (TYPE_1__*) ;
 int dsl_pool_config_held (TYPE_3__*) ;
 char* kmem_asprintf (char*,char const*,int ) ;
 int kmem_strfree (char*) ;
 int strcpy (char*,int ) ;
 int zap_contains (int *,int ,char*) ;
 int zap_lookup (int *,int ,char const*,int,int,void*) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_inheritable (scalar_t__) ;

int
dsl_prop_get_dd(dsl_dir_t *dd, const char *propname,
    int intsz, int numints, void *buf, char *setpoint, boolean_t snapshot)
{
 int err = ENOENT;
 dsl_dir_t *target = dd;
 objset_t *mos = dd->dd_pool->dp_meta_objset;
 zfs_prop_t prop;
 boolean_t inheritable;
 boolean_t inheriting = B_FALSE;
 char *inheritstr;
 char *recvdstr;

 ASSERT(dsl_pool_config_held(dd->dd_pool));

 if (setpoint)
  setpoint[0] = '\0';

 prop = zfs_name_to_prop(propname);
 inheritable = (prop == ZPROP_INVAL || zfs_prop_inheritable(prop));
 inheritstr = kmem_asprintf("%s%s", propname, ZPROP_INHERIT_SUFFIX);
 recvdstr = kmem_asprintf("%s%s", propname, ZPROP_RECVD_SUFFIX);





 for (; dd != ((void*)0); dd = dd->dd_parent) {
  if (dd != target || snapshot) {
   if (!inheritable)
    break;
   inheriting = B_TRUE;
  }


  err = zap_lookup(mos, dsl_dir_phys(dd)->dd_props_zapobj,
      propname, intsz, numints, buf);
  if (err != ENOENT) {
   if (setpoint != ((void*)0) && err == 0)
    dsl_dir_name(dd, setpoint);
   break;
  }





  err = zap_contains(mos, dsl_dir_phys(dd)->dd_props_zapobj,
      inheritstr);
  if (err != 0 && err != ENOENT)
   break;

  if (err == ENOENT) {

   err = zap_lookup(mos, dsl_dir_phys(dd)->dd_props_zapobj,
       recvdstr, intsz, numints, buf);
   if (err != ENOENT) {
    if (setpoint != ((void*)0) && err == 0) {
     if (inheriting) {
      dsl_dir_name(dd, setpoint);
     } else {
      (void) strcpy(setpoint,
          ZPROP_SOURCE_VAL_RECVD);
     }
    }
    break;
   }
  }







  err = SET_ERROR(ENOENT);
 }

 if (err == ENOENT)
  err = dodefault(prop, intsz, numints, buf);

 kmem_strfree(inheritstr);
 kmem_strfree(recvdstr);

 return (err);
}
