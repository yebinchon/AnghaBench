
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,size_t,size_t) ;
 int perror (char*) ;
 scalar_t__ pwrite (int,void const*,size_t,int ) ;
 int stderr ;

__attribute__((used)) static void
rwc_pwrite(int fd, const void *buf, size_t nbytes, off_t offset)
{
 size_t nleft = nbytes;
 ssize_t nwrite = 0;

 nwrite = pwrite(fd, buf, nbytes, offset);
 if (nwrite < 0) {
  perror("pwrite");
  exit(EXIT_FAILURE);
 }

 nleft -= nwrite;
 if (nleft != 0) {
  (void) fprintf(stderr, "warning: pwrite: "
      "wrote %zu out of %zu bytes\n",
      (nbytes - nleft), nbytes);
 }
}
