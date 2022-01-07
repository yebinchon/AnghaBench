
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef scalar_t__ boolean_t ;
typedef int DIR ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IFREG ;
 int S_IRUSR ;
 int S_IWUSR ;
 int asprintf (char**,char*,char*,char*) ;
 int daemonize () ;
 int fail (char*,int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int open (char*,int,int) ;
 int * opendir (char*) ;
 scalar_t__ optind ;
 int pause () ;
 int stat (char*,struct stat*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 int ret, c;
 boolean_t isdir = B_FALSE;
 boolean_t fflag = B_FALSE;
 boolean_t rflag = B_FALSE;
 struct stat sbuf;
 char *fpath = ((void*)0);
 char *prog = argv[0];

 while ((c = getopt(argc, argv, "fr")) != -1) {
  switch (c) {

  case 'r':
   rflag = B_TRUE;
   break;

  case 'f':
   fflag = B_TRUE;
   break;
  default:
   usage(prog);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 1)
  usage(prog);

 if ((ret = stat(argv[0], &sbuf)) != 0) {
  char *arg, *dname, *fname;
  int arglen;
  char *slash;
  int rc;





  if ((arg = strdup(argv[0])) == ((void*)0))
   fail("strdup", 1);
  arglen = strlen(arg);
  if (arg[arglen - 1] == '/')
   arg[arglen - 1] = '\0';





  if ((slash = strrchr(arg, '/')) == ((void*)0)) {
   dname = strdup(".");
   fname = strdup(arg);
  } else {
   *slash = '\0';
   dname = strdup(arg);
   fname = strdup(slash + 1);
  }
  free(arg);
  if (dname == ((void*)0) || fname == ((void*)0))
   fail("strdup", 1);


  if ((ret = stat(dname, &sbuf)) != 0 || !(sbuf.st_mode &
      S_IFDIR))
   usage(prog);

  rc = asprintf(&fpath, "%s/%s", dname, fname);
  free(dname);
  free(fname);
  if (rc == -1 || fpath == ((void*)0))
   fail("asprintf", 1);

 } else if ((sbuf.st_mode & S_IFMT) == S_IFREG ||
     (sbuf.st_mode & S_IFMT) == S_IFLNK ||
     (sbuf.st_mode & S_IFMT) == S_IFCHR ||
     (sbuf.st_mode & S_IFMT) == S_IFBLK) {
  fpath = strdup(argv[0]);
 } else if ((sbuf.st_mode & S_IFMT) == S_IFDIR) {
  fpath = strdup(argv[0]);
  isdir = B_TRUE;
 } else {
  usage(prog);
 }

 if (fpath == ((void*)0))
  fail("strdup", 1);

 if (isdir == B_FALSE) {
  int fd, flags;
  mode_t mode = S_IRUSR | S_IWUSR;

  flags = rflag == B_FALSE ? O_CREAT | O_RDWR : O_RDONLY;

  if ((fd = open(fpath, flags, mode)) < 0)
   fail("open", 1);
 } else {
  DIR *dp;

  if ((dp = opendir(fpath)) == ((void*)0))
   fail("opendir", 1);
 }
 free(fpath);

 if (fflag == B_FALSE)
  daemonize();
 (void) pause();


 return (0);
}
