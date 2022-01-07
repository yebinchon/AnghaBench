
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_8__ {TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_6__ {TYPE_2__* dd_pool; } ;


 int ASSERT0 (int ) ;
 int KM_SLEEP ;
 int ZAP_MAXVALUELEN ;
 int ZFS_PROP_MOUNTPOINT ;
 char* ZPROP_SOURCE_VAL_RECVD ;
 int dsl_prop_get_ds (TYPE_3__*,int ,int,int ,char*,char*) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int snprintf (char*,int ,char*,char*,char*,...) ;
 int spa_altroot (int ,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 int zfs_prop_to_name (int ) ;

int
dsl_get_mountpoint(dsl_dataset_t *ds, const char *dsname, char *value,
    char *source)
{
 int error;
 dsl_pool_t *dp = ds->ds_dir->dd_pool;


 error = dsl_prop_get_ds(ds, zfs_prop_to_name(ZFS_PROP_MOUNTPOINT), 1,
     ZAP_MAXVALUELEN, value, source);
 if (error != 0) {
  return (error);
 }





 if (value[0] == '/') {
  char *buf = kmem_alloc(ZAP_MAXVALUELEN, KM_SLEEP);
  char *root = buf;
  const char *relpath;
  if (strcmp(source, ZPROP_SOURCE_VAL_RECVD) == 0) {
   relpath = "";
  } else {
   ASSERT0(strncmp(dsname, source, strlen(source)));
   relpath = dsname + strlen(source);
   if (relpath[0] == '/')
    relpath++;
  }

  spa_altroot(dp->dp_spa, root, ZAP_MAXVALUELEN);






  if (strcmp(root, "/") == 0)
   root++;






  char *mnt = value;
  if (value[1] == '\0' && (root[0] != '\0' ||
      relpath[0] != '\0'))
   mnt = value + 1;

  if (relpath[0] == '\0') {
   (void) snprintf(value, ZAP_MAXVALUELEN, "%s%s",
       root, mnt);
  } else {
   (void) snprintf(value, ZAP_MAXVALUELEN, "%s%s%s%s",
       root, mnt, relpath[0] == '@' ? "" : "/",
       relpath);
  }
  kmem_free(buf, ZAP_MAXVALUELEN);
 }

 return (0);
}
