
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct utimbuf {void* modtime; void* actime; } ;
struct stat {void* st_mtime; void* st_atime; } ;


 int DEFFILEMODE ;
 int EOF ;
 int O_CREAT ;
 int O_WRONLY ;
 char* __progname ;
 scalar_t__ _close (int) ;
 int _open (char*,int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 scalar_t__ rw (char*,struct stat*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stime_arg1 (int ,void**) ;
 int stime_arg2 (char*,int,void**) ;
 int stime_file (int ,void**) ;
 int strtol (char*,char**,int) ;
 int time (void**) ;
 int usage () ;
 int utime (char*,struct utimbuf*) ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 time_t tv[2];
 int aflag, cflag, fflag, mflag, ch, fd, len, rval, timeset;
 char *p;
 struct utimbuf utb;

 __progname = argv[0];

 aflag = cflag = fflag = mflag = timeset = 0;
 time(&tv[0]);

 while ((ch = getopt(argc, argv, "acfmr:t:")) != EOF)
  switch(ch) {
  case 'a':
   aflag = 1;
   break;
  case 'c':
   cflag = 1;
   break;
  case 'f':
   fflag = 1;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'r':
   timeset = 1;
   stime_file(optarg, tv);
   break;
  case 't':
   timeset = 1;
   stime_arg1(optarg, tv);
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;


 if (aflag == 0 && mflag == 0)
  aflag = mflag = 1;





 if (!timeset && argc > 1) {
  (void)strtol(argv[0], &p, 10);
  len = p - argv[0];
  if (*p == '\0' && (len == 8 || len == 10)) {
   timeset = 1;
   stime_arg2(argv[0], len == 10, tv);
  }
 }


 if (!timeset)
  tv[1] = tv[0];

 if (*argv == ((void*)0))
  usage();

 for (rval = 0; *argv; ++argv) {

  if (stat(*argv, &sb)) {
   if (!cflag) {

    fd = _open(*argv,
        O_WRONLY | O_CREAT, DEFFILEMODE);
    if (fd == -1 || fstat(fd, &sb) || _close(fd)) {
     rval = 1;
     warn("%s", *argv);
     continue;
    }


    if (!timeset)
     continue;
   } else
    continue;
  }

  if (!aflag)
   tv[0] = sb.st_atime;
  if (!mflag)
   tv[1] = sb.st_mtime;


  utb.actime = tv[0];
  utb.modtime = tv[1];
  if (!utime(*argv, &utb))
   continue;


  if (timeset) {
   rval = 1;
   warn("%s", *argv);
  }







   if (!utime(*argv, ((void*)0)))
   continue;


  if (rw(*argv, &sb, fflag))
   rval = 1;
 }
 return rval;
}
