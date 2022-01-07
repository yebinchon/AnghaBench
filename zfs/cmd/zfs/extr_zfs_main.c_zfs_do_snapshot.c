
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char* sd_snapname; int * sd_nvl; void* sd_recursive; int member_0; } ;
typedef TYPE_1__ snap_cbdata_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int optarg ;
 scalar_t__ optind ;
 int optopt ;
 int parseprop (int *,int ) ;
 int stderr ;
 char* strchr (char*,char) ;
 int usage (void*) ;
 int * zfs_open (int ,char*,int) ;
 scalar_t__ zfs_snapshot_cb (int *,TYPE_1__*) ;
 int zfs_snapshot_nvl (int ,int *,int *) ;

__attribute__((used)) static int
zfs_do_snapshot(int argc, char **argv)
{
 int ret = 0;
 int c;
 nvlist_t *props;
 snap_cbdata_t sd = { 0 };
 boolean_t multiple_snaps = B_FALSE;

 if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0)
  nomem();
 if (nvlist_alloc(&sd.sd_nvl, NV_UNIQUE_NAME, 0) != 0)
  nomem();


 while ((c = getopt(argc, argv, "ro:")) != -1) {
  switch (c) {
  case 'o':
   if (!parseprop(props, optarg)) {
    nvlist_free(sd.sd_nvl);
    nvlist_free(props);
    return (1);
   }
   break;
  case 'r':
   sd.sd_recursive = B_TRUE;
   multiple_snaps = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   goto usage;
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing snapshot argument\n"));
  goto usage;
 }

 if (argc > 1)
  multiple_snaps = B_TRUE;
 for (; argc > 0; argc--, argv++) {
  char *atp;
  zfs_handle_t *zhp;

  atp = strchr(argv[0], '@');
  if (atp == ((void*)0))
   goto usage;
  *atp = '\0';
  sd.sd_snapname = atp + 1;
  zhp = zfs_open(g_zfs, argv[0],
      ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
  if (zhp == ((void*)0))
   goto usage;
  if (zfs_snapshot_cb(zhp, &sd) != 0)
   goto usage;
 }

 ret = zfs_snapshot_nvl(g_zfs, sd.sd_nvl, props);
 nvlist_free(sd.sd_nvl);
 nvlist_free(props);
 if (ret != 0 && multiple_snaps)
  (void) fprintf(stderr, gettext("no snapshots were created\n"));
 return (ret != 0);

usage:
 nvlist_free(sd.sd_nvl);
 nvlist_free(props);
 usage(B_FALSE);
 return (-1);
}
