
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {char* cb_target; int cb_error; scalar_t__ cb_first; scalar_t__ cb_recurse; } ;
typedef TYPE_1__ rollback_cbdata_t ;


 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int stderr ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;

__attribute__((used)) static int
rollback_check_dependent(zfs_handle_t *zhp, void *data)
{
 rollback_cbdata_t *cbp = data;

 if (cbp->cb_first && cbp->cb_recurse) {
  (void) fprintf(stderr, gettext("cannot rollback to "
      "'%s': clones of previous snapshots exist\n"),
      cbp->cb_target);
  (void) fprintf(stderr, gettext("use '-R' to "
      "force deletion of the following clones and "
      "dependents:\n"));
  cbp->cb_first = 0;
  cbp->cb_error = 1;
 }

 (void) fprintf(stderr, "%s\n", zfs_get_name(zhp));

 zfs_close(zhp);
 return (0);
}
