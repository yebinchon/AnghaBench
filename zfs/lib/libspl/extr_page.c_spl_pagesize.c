
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 scalar_t__ pagesize ;
 scalar_t__ sysconf (int ) ;

size_t
spl_pagesize(void)
{
 if (pagesize == 0)
  pagesize = sysconf(_SC_PAGESIZE);

 return (pagesize);
}
