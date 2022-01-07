
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 int stderr ;
 float strtof (char*,char**) ;
 int usage (int ) ;
 scalar_t__ zfs_isnumber (char*) ;

__attribute__((used)) static void
get_interval_count(int *argcp, char **argv, float *iv,
    unsigned long *cnt)
{
 float interval = 0;
 unsigned long count = 0;
 int argc = *argcp;




 if (argc > 0 && zfs_isnumber(argv[argc - 1])) {
  char *end;

  errno = 0;
  interval = strtof(argv[argc - 1], &end);

  if (*end == '\0' && errno == 0) {
   if (interval == 0) {
    (void) fprintf(stderr, gettext("interval "
        "cannot be zero\n"));
    usage(B_FALSE);
   }



   argc--;
  } else {





   interval = 0;
  }
 }





 if (argc > 0 && zfs_isnumber(argv[argc - 1])) {
  char *end;

  errno = 0;
  count = interval;
  interval = strtof(argv[argc - 1], &end);

  if (*end == '\0' && errno == 0) {
   if (interval == 0) {
    (void) fprintf(stderr, gettext("interval "
        "cannot be zero\n"));
    usage(B_FALSE);
   }




   argc--;
  } else {
   interval = 0;
  }
 }

 *iv = interval;
 *cnt = count;
 *argcp = argc;
}
