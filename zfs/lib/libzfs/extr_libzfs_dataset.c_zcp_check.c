
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_prop_t ;
struct TYPE_7__ {char* zfs_name; TYPE_2__* zpool_hdl; TYPE_1__* zfs_hdl; } ;
typedef TYPE_3__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int nvlist_t ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {char* zpool_name; } ;
struct TYPE_5__ {int libzfs_prop_debug; } ;


 scalar_t__ PROP_TYPE_NUMBER ;
 int fnvlist_add_string (int *,char*,char*) ;
 int * fnvlist_alloc () ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int lzc_channel_program_nosync (char*,char const*,int,int,int *,int **) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_int64 (int *,char*,scalar_t__*) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ zfs_prop_get_type (int ) ;
 char* zfs_prop_to_name (int ) ;

__attribute__((used)) static void
zcp_check(zfs_handle_t *zhp, zfs_prop_t prop, uint64_t intval,
    const char *strval)
{
 if (!zhp->zfs_hdl->libzfs_prop_debug)
  return;
 int error;
 char *poolname = zhp->zpool_hdl->zpool_name;
 const char *prop_name = zfs_prop_to_name(prop);
 const char *program =
     "args = ...\n"
     "ds = args['dataset']\n"
     "prop = args['property']\n"
     "value, setpoint = zfs.get_prop(ds, prop)\n"
     "return {value=value, setpoint=setpoint}\n";
 nvlist_t *outnvl;
 nvlist_t *retnvl;
 nvlist_t *argnvl = fnvlist_alloc();

 fnvlist_add_string(argnvl, "dataset", zhp->zfs_name);
 fnvlist_add_string(argnvl, "property", zfs_prop_to_name(prop));

 error = lzc_channel_program_nosync(poolname, program,
     10 * 1000 * 1000, 10 * 1024 * 1024, argnvl, &outnvl);

 if (error == 0) {
  retnvl = fnvlist_lookup_nvlist(outnvl, "return");
  if (zfs_prop_get_type(prop) == PROP_TYPE_NUMBER) {
   int64_t ans;
   error = nvlist_lookup_int64(retnvl, "value", &ans);
   if (error != 0) {
    (void) fprintf(stderr, "%s: zcp check error: "
        "%u\n", prop_name, error);
    return;
   }
   if (ans != intval) {
    (void) fprintf(stderr, "%s: zfs found %llu, "
        "but zcp found %llu\n", prop_name,
        (u_longlong_t)intval, (u_longlong_t)ans);
   }
  } else {
   char *str_ans;
   error = nvlist_lookup_string(retnvl, "value", &str_ans);
   if (error != 0) {
    (void) fprintf(stderr, "%s: zcp check error: "
        "%u\n", prop_name, error);
    return;
   }
   if (strcmp(strval, str_ans) != 0) {
    (void) fprintf(stderr,
        "%s: zfs found '%s', but zcp found '%s'\n",
        prop_name, strval, str_ans);
   }
  }
 } else {
  (void) fprintf(stderr, "%s: zcp check failed, channel program "
      "error: %u\n", prop_name, error);
 }
 nvlist_free(argnvl);
 nvlist_free(outnvl);
}
