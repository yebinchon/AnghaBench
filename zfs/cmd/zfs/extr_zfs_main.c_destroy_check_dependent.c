
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {void* cb_dryrun; void* cb_error; void* cb_first; int * cb_target; scalar_t__ cb_recurse; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int stderr ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 char* zfs_type_to_name (scalar_t__) ;

__attribute__((used)) static int
destroy_check_dependent(zfs_handle_t *zhp, void *data)
{
 destroy_cbdata_t *cbp = data;
 const char *tname = zfs_get_name(cbp->cb_target);
 const char *name = zfs_get_name(zhp);

 if (strncmp(tname, name, strlen(tname)) == 0 &&
     (name[strlen(tname)] == '/' || name[strlen(tname)] == '@')) {




  if (cbp->cb_recurse)
   goto out;

  if (cbp->cb_first) {
   (void) fprintf(stderr, gettext("cannot destroy '%s': "
       "%s has children\n"),
       zfs_get_name(cbp->cb_target),
       zfs_type_to_name(zfs_get_type(cbp->cb_target)));
   (void) fprintf(stderr, gettext("use '-r' to destroy "
       "the following datasets:\n"));
   cbp->cb_first = B_FALSE;
   cbp->cb_error = B_TRUE;
  }

  (void) fprintf(stderr, "%s\n", zfs_get_name(zhp));
 } else {




  if (!cbp->cb_recurse &&
      zfs_get_type(cbp->cb_target) != ZFS_TYPE_SNAPSHOT)
   goto out;

  if (cbp->cb_first) {
   (void) fprintf(stderr, gettext("cannot destroy '%s': "
       "%s has dependent clones\n"),
       zfs_get_name(cbp->cb_target),
       zfs_type_to_name(zfs_get_type(cbp->cb_target)));
   (void) fprintf(stderr, gettext("use '-R' to destroy "
       "the following datasets:\n"));
   cbp->cb_first = B_FALSE;
   cbp->cb_error = B_TRUE;
   cbp->cb_dryrun = B_TRUE;
  }

  (void) fprintf(stderr, "%s\n", zfs_get_name(zhp));
 }

out:
 zfs_close(zhp);
 return (0);
}
