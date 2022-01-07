
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 size_t NDISKS ;
 int O_RDONLY ;
 int* disk_fd ;
 int errno ;
 size_t ndisks ;
 int open (char*,int ) ;

__attribute__((used)) static int
disk_open(char *path)
{
 int err, fd;

 if (ndisks >= NDISKS)
  return (ERANGE);

 err = 0;
 fd = open(path, O_RDONLY);

 if (fd > 0) {
  disk_fd[ndisks] = fd;
  ndisks++;
 } else
  err = errno;

 return (err);
}
