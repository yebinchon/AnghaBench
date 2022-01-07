
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pd_visible; scalar_t__ pd_attr; char* pd_name; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef int zfs_deleg_note_t ;
typedef int opt_desc ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {char* z_perm; int z_note; } ;
typedef int FILE ;


 scalar_t__ B_TRUE ;
 int HELP_ALLOW ;
 int HELP_UNALLOW ;
 scalar_t__ PROP_READONLY ;
 int ZFS_NUM_DELEG_NOTES ;
 int ZFS_NUM_PROPS ;
 char* deleg_perm_comment (int ) ;
 char* deleg_perm_type (int ) ;
 int exit (int) ;
 int fprintf (int *,char const*,...) ;
 char* get_usage (int ) ;
 char* gettext (char*) ;
 int prop_cmp ;
 int qsort (char const**,size_t,int,int ) ;
 int * stderr ;
 int * stdout ;
 TYPE_3__* zfs_deleg_perm_tbl ;
 TYPE_1__* zfs_prop_get_table () ;

__attribute__((used)) static void
allow_usage(boolean_t un, boolean_t requested, const char *msg)
{
 const char *opt_desc[] = {
  "-h", gettext("show this help message and exit"),
  "-l", gettext("set permission locally"),
  "-d", gettext("set permission for descents"),
  "-u", gettext("set permission for user"),
  "-g", gettext("set permission for group"),
  "-e", gettext("set permission for everyone"),
  "-c", gettext("set create time permission"),
  "-s", gettext("define permission set"),

  "-r", gettext("remove permissions recursively"),
 };
 size_t unallow_size = sizeof (opt_desc) / sizeof (char *);
 size_t allow_size = unallow_size - 2;
 const char *props[ZFS_NUM_PROPS];
 int i;
 size_t count = 0;
 FILE *fp = requested ? stdout : stderr;
 zprop_desc_t *pdtbl = zfs_prop_get_table();
 const char *fmt = gettext("%-16s %-14s\t%s\n");

 (void) fprintf(fp, gettext("Usage: %s\n"), get_usage(un ? HELP_UNALLOW :
     HELP_ALLOW));
 (void) fprintf(fp, gettext("Options:\n"));
 for (i = 0; i < (un ? unallow_size : allow_size); i += 2) {
  const char *opt = opt_desc[i];
  const char *optdsc = opt_desc[i + 1];
  (void) fprintf(fp, gettext("  %-10s  %s\n"), opt, optdsc);
 }

 (void) fprintf(fp, gettext("\nThe following permissions are "
     "supported:\n\n"));
 (void) fprintf(fp, fmt, gettext("NAME"), gettext("TYPE"),
     gettext("NOTES"));
 for (i = 0; i < ZFS_NUM_DELEG_NOTES; i++) {
  const char *perm_name = zfs_deleg_perm_tbl[i].z_perm;
  zfs_deleg_note_t perm_note = zfs_deleg_perm_tbl[i].z_note;
  const char *perm_type = deleg_perm_type(perm_note);
  const char *perm_comment = deleg_perm_comment(perm_note);
  (void) fprintf(fp, fmt, perm_name, perm_type, perm_comment);
 }

 for (i = 0; i < ZFS_NUM_PROPS; i++) {
  zprop_desc_t *pd = &pdtbl[i];
  if (pd->pd_visible != B_TRUE)
   continue;

  if (pd->pd_attr == PROP_READONLY)
   continue;

  props[count++] = pd->pd_name;
 }
 props[count] = ((void*)0);

 qsort(props, count, sizeof (char *), prop_cmp);

 for (i = 0; i < count; i++)
  (void) fprintf(fp, fmt, props[i], gettext("property"), "");

 if (msg != ((void*)0))
  (void) fprintf(fp, gettext("\nzfs: error: %s"), msg);

 exit(requested ? 0 : 2);
}
