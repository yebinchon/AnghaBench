
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int id ;


 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 scalar_t__ rand () ;
 int read (int,int*,int) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
zpool_label_name(char *label_name, int label_size)
{
 uint64_t id = 0;
 int fd;

 fd = open("/dev/urandom", O_RDONLY);
 if (fd >= 0) {
  if (read(fd, &id, sizeof (id)) != sizeof (id))
   id = 0;

  close(fd);
 }

 if (id == 0)
  id = (((uint64_t)rand()) << 32) | (uint64_t)rand();

 snprintf(label_name, label_size, "zfs-%016llx", (u_longlong_t)id);
}
