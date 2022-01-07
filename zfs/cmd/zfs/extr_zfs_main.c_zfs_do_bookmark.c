
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int snapname ;
typedef int nvlist_t ;
typedef int errbuf ;
typedef int bookname ;


 int B_FALSE ;






 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_SNAPSHOT ;
 char* dgettext (int ,char const*) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int lzc_bookmark (int *,int *) ;
 scalar_t__ optind ;
 int optopt ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int usage (int ) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_standard_error (int ,int,char*) ;

__attribute__((used)) static int
zfs_do_bookmark(int argc, char **argv)
{
 char snapname[ZFS_MAX_DATASET_NAME_LEN];
 char bookname[ZFS_MAX_DATASET_NAME_LEN];
 zfs_handle_t *zhp;
 nvlist_t *nvl;
 int ret = 0;
 int c;


 while ((c = getopt(argc, argv, "")) != -1) {
  switch (c) {
  case '?':
   (void) fprintf(stderr,
       gettext("invalid option '%c'\n"), optopt);
   goto usage;
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing snapshot argument\n"));
  goto usage;
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing bookmark argument\n"));
  goto usage;
 }

 if (strchr(argv[0], '@') == ((void*)0)) {
  (void) fprintf(stderr,
      gettext("invalid snapshot name '%s': "
      "must contain a '@'\n"), argv[0]);
  goto usage;
 }
 if (strchr(argv[1], '#') == ((void*)0)) {
  (void) fprintf(stderr,
      gettext("invalid bookmark name '%s': "
      "must contain a '#'\n"), argv[1]);
  goto usage;
 }

 if (argv[0][0] == '@') {




  (void) strlcpy(snapname, argv[1], sizeof (snapname));
  *strchr(snapname, '#') = '\0';
  (void) strlcat(snapname, argv[0], sizeof (snapname));
 } else {
  (void) strlcpy(snapname, argv[0], sizeof (snapname));
 }
 if (argv[1][0] == '#') {




  (void) strlcpy(bookname, argv[0], sizeof (bookname));
  *strchr(bookname, '@') = '\0';
  (void) strlcat(bookname, argv[1], sizeof (bookname));
 } else {
  (void) strlcpy(bookname, argv[1], sizeof (bookname));
 }

 zhp = zfs_open(g_zfs, snapname, ZFS_TYPE_SNAPSHOT);
 if (zhp == ((void*)0))
  goto usage;
 zfs_close(zhp);


 nvl = fnvlist_alloc();
 fnvlist_add_string(nvl, bookname, snapname);
 ret = lzc_bookmark(nvl, ((void*)0));
 fnvlist_free(nvl);

 if (ret != 0) {
  const char *err_msg = ((void*)0);
  char errbuf[1024];

  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN,
      "cannot create bookmark '%s'"), bookname);

  switch (ret) {
  case 128:
   err_msg = "bookmark is in a different pool";
   break;
  case 133:
   err_msg = "bookmark exists";
   break;
  case 132:
   err_msg = "invalid argument";
   break;
  case 129:
   err_msg = "bookmark feature not enabled";
   break;
  case 130:
   err_msg = "out of space";
   break;
  case 131:
   err_msg = "dataset does not exist";
   break;
  default:
   (void) zfs_standard_error(g_zfs, ret, errbuf);
   break;
  }
  if (err_msg != ((void*)0)) {
   (void) fprintf(stderr, "%s: %s\n", errbuf,
       dgettext(TEXT_DOMAIN, err_msg));
  }
 }

 return (ret != 0);

usage:
 usage(B_FALSE);
 return (-1);
}
