
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev ;
struct stat {int dummy; } ;
typedef int pool_state_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ENOENT ;
 scalar_t__ ENOTTY ;
 int MAXPATHLEN ;
 int O_RDWR ;






 int assert (int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int nvlist_free (int *) ;
 int open (char*,int ) ;
 scalar_t__ optind ;
 int optopt ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int usage (int ) ;
 int zfs_append_partition (char*,int) ;
 scalar_t__ zfs_dev_flush (int) ;
 scalar_t__ zfs_dev_is_whole_disk (char*) ;
 int zfs_resolve_shortname (char*,char*,int) ;
 int zpool_clear_label (int) ;
 int zpool_in_use (int ,int,int*,char**,int *) ;
 char* zpool_pool_state_to_name (int) ;
 scalar_t__ zpool_read_label (int,int **,int *) ;

int
zpool_do_labelclear(int argc, char **argv)
{
 char vdev[MAXPATHLEN];
 char *name = ((void*)0);
 struct stat st;
 int c, fd = -1, ret = 0;
 nvlist_t *config;
 pool_state_t state;
 boolean_t inuse = B_FALSE;
 boolean_t force = B_FALSE;


 while ((c = getopt(argc, argv, "f")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
   break;
  default:
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing vdev name\n"));
  usage(B_FALSE);
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }






 (void) strlcpy(vdev, argv[0], sizeof (vdev));
 if (vdev[0] != '/' && stat(vdev, &st) != 0) {
  int error;

  error = zfs_resolve_shortname(argv[0], vdev, MAXPATHLEN);
  if (error == 0 && zfs_dev_is_whole_disk(vdev)) {
   if (zfs_append_partition(vdev, MAXPATHLEN) == -1)
    error = ENOENT;
  }

  if (error || (stat(vdev, &st) != 0)) {
   (void) fprintf(stderr, gettext(
       "failed to find device %s, try specifying absolute "
       "path instead\n"), argv[0]);
   return (1);
  }
 }

 if ((fd = open(vdev, O_RDWR)) < 0) {
  (void) fprintf(stderr, gettext("failed to open %s: %s\n"),
      vdev, strerror(errno));
  return (1);
 }






 if ((zfs_dev_flush(fd) != 0) && (errno != ENOTTY))
  (void) fprintf(stderr, gettext("failed to invalidate "
      "cache for %s: %s\n"), vdev, strerror(errno));

 if (zpool_read_label(fd, &config, ((void*)0)) != 0) {
  (void) fprintf(stderr,
      gettext("failed to read label from %s\n"), vdev);
  ret = 1;
  goto errout;
 }
 nvlist_free(config);

 ret = zpool_in_use(g_zfs, fd, &state, &name, &inuse);
 if (ret != 0) {
  (void) fprintf(stderr,
      gettext("failed to check state for %s\n"), vdev);
  ret = 1;
  goto errout;
 }

 if (!inuse)
  goto wipe_label;

 switch (state) {
 default:
 case 133:
 case 128:
 case 130:
  (void) fprintf(stderr, gettext(
      "%s is a member (%s) of pool \"%s\"\n"),
      vdev, zpool_pool_state_to_name(state), name);
  ret = 1;
  goto errout;

 case 131:
  if (force)
   break;
  (void) fprintf(stderr, gettext(
      "use '-f' to override the following error:\n"
      "%s is a member of exported pool \"%s\"\n"),
      vdev, name);
  ret = 1;
  goto errout;

 case 129:
  if (force)
   break;
  (void) fprintf(stderr, gettext(
      "use '-f' to override the following error:\n"
      "%s is a member of potentially active pool \"%s\"\n"),
      vdev, name);
  ret = 1;
  goto errout;

 case 132:

  assert(0);
  break;
 }

wipe_label:
 ret = zpool_clear_label(fd);
 if (ret != 0) {
  (void) fprintf(stderr,
      gettext("failed to clear label for %s\n"), vdev);
 }

errout:
 free(name);
 (void) close(fd);

 return (ret);
}
