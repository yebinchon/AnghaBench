
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zfs_version_print () ;

__attribute__((used)) static int
zpool_do_version(int argc, char **argv)
{
 if (zfs_version_print() == -1)
  return (1);

 return (0);
}
