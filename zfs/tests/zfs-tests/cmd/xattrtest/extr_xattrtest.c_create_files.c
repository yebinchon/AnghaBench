
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ERROR (char*,int,...) ;
 int O_CREAT ;
 int PATH_MAX ;
 int close (int) ;
 int errno ;
 int files ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 char* malloc (size_t) ;
 int nth ;
 int open (char*,int ,int) ;
 char* path ;
 int post_hook (char*) ;
 size_t snprintf (char*,size_t,char*,char*,int) ;
 int stdout ;
 double timeval_sub_seconds (struct timeval*,struct timeval*) ;
 int unlink (char*) ;

__attribute__((used)) static int
create_files(void)
{
 int i, rc;
 char *file = ((void*)0);
 struct timeval start, stop;
 double seconds;
 size_t fsize;

 fsize = PATH_MAX;
 file = malloc(fsize);
 if (file == ((void*)0)) {
  rc = ENOMEM;
  ERROR("Error %d: malloc(%d) bytes for file name\n", rc,
      PATH_MAX);
  goto out;
 }

 (void) gettimeofday(&start, ((void*)0));

 for (i = 1; i <= files; i++) {
  if (snprintf(file, fsize, "%s/file-%d", path, i) >= fsize) {
   rc = EINVAL;
   ERROR("Error %d: path too long\n", rc);
   goto out;
  }

  if (nth && ((i % nth) == 0))
   fprintf(stdout, "create: %s\n", file);

  rc = unlink(file);
  if ((rc == -1) && (errno != ENOENT)) {
   ERROR("Error %d: unlink(%s)\n", errno, file);
   rc = errno;
   goto out;
  }

  rc = open(file, O_CREAT, 0644);
  if (rc == -1) {
   ERROR("Error %d: open(%s, O_CREATE, 0644)\n",
       errno, file);
   rc = errno;
   goto out;
  }

  rc = close(rc);
  if (rc == -1) {
   ERROR("Error %d: close(%d)\n", errno, rc);
   rc = errno;
   goto out;
  }
 }

 (void) gettimeofday(&stop, ((void*)0));
 seconds = timeval_sub_seconds(&stop, &start);
 fprintf(stdout, "create:   %f seconds %f creates/second\n",
     seconds, files / seconds);

 rc = post_hook("post");
out:
 if (file)
  free(file);

 return (rc);
}
