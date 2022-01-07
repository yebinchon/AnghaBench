
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_EXCL ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int fdatasync (int) ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int memset (char*,int ,int const) ;
 int open (char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 int write (int,char*,int const) ;

__attribute__((used)) static int
zero_label(char *path)
{
 const int size = 4096;
 char buf[size];
 int err, fd;

 if ((fd = open(path, O_WRONLY|O_EXCL)) < 0) {
  (void) fprintf(stderr, gettext("cannot open '%s': %s\n"),
      path, strerror(errno));
  return (-1);
 }

 memset(buf, 0, size);
 err = write(fd, buf, size);
 (void) fdatasync(fd);
 (void) close(fd);

 if (err == -1) {
  (void) fprintf(stderr, gettext("cannot zero first %d bytes "
      "of '%s': %s\n"), size, path, strerror(errno));
  return (-1);
 }

 if (err != size) {
  (void) fprintf(stderr, gettext("could only zero %d/%d bytes "
      "of '%s'\n"), err, size, path);
  return (-1);
 }

 return (0);
}
