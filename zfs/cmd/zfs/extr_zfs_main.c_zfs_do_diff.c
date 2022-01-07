
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int B_FALSE ;
 int SIGPIPE ;
 int SIG_IGN ;
 int STDOUT_FILENO ;
 int ZFS_DIFF_CLASSIFY ;
 int ZFS_DIFF_PARSEABLE ;
 int ZFS_DIFF_TIMESTAMP ;
 int ZFS_TYPE_FILESYSTEM ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int usage (int ) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_show_diffs (int *,int ,char*,char*,int) ;

__attribute__((used)) static int
zfs_do_diff(int argc, char **argv)
{
 zfs_handle_t *zhp;
 int flags = 0;
 char *tosnap = ((void*)0);
 char *fromsnap = ((void*)0);
 char *atp, *copy;
 int err = 0;
 int c;
 struct sigaction sa;

 while ((c = getopt(argc, argv, "FHt")) != -1) {
  switch (c) {
  case 'F':
   flags |= ZFS_DIFF_CLASSIFY;
   break;
  case 'H':
   flags |= ZFS_DIFF_PARSEABLE;
   break;
  case 't':
   flags |= ZFS_DIFF_TIMESTAMP;
   break;
  default:
   (void) fprintf(stderr,
       gettext("invalid option '%c'\n"), optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr,
      gettext("must provide at least one snapshot name\n"));
  usage(B_FALSE);
 }

 if (argc > 2) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 fromsnap = argv[0];
 tosnap = (argc == 2) ? argv[1] : ((void*)0);

 copy = ((void*)0);
 if (*fromsnap != '@')
  copy = strdup(fromsnap);
 else if (tosnap)
  copy = strdup(tosnap);
 if (copy == ((void*)0))
  usage(B_FALSE);

 if ((atp = strchr(copy, '@')) != ((void*)0))
  *atp = '\0';

 if ((zhp = zfs_open(g_zfs, copy, ZFS_TYPE_FILESYSTEM)) == ((void*)0)) {
  free(copy);
  return (1);
 }
 free(copy);





 if (sigemptyset(&sa.sa_mask) == -1) {
  err = errno;
  goto out;
 }
 sa.sa_flags = 0;
 sa.sa_handler = SIG_IGN;
 if (sigaction(SIGPIPE, &sa, ((void*)0)) == -1) {
  err = errno;
  goto out;
 }

 err = zfs_show_diffs(zhp, STDOUT_FILENO, fromsnap, tosnap, flags);
out:
 zfs_close(zhp);

 return (err != 0);
}
