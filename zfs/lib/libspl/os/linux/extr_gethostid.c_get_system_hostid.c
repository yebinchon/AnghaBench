
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HOSTID_MASK ;
 int O_RDONLY ;
 int close (int) ;
 unsigned long get_spl_hostid () ;
 int open (char*,int ) ;
 int read (int,unsigned long*,int) ;

unsigned long
get_system_hostid(void)
{
 unsigned long system_hostid = get_spl_hostid();
 if (system_hostid == 0) {
  int fd, rc;
  unsigned long hostid;
  int hostid_size = 4;

  fd = open("/etc/hostid", O_RDONLY);
  if (fd >= 0) {
   rc = read(fd, &hostid, hostid_size);
   if (rc > 0)
    system_hostid = (hostid & HOSTID_MASK);
   close(fd);
  }
 }
 return (system_hostid);
}
