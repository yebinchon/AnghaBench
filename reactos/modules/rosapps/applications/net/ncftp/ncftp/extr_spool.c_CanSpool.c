
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sdir ;


 scalar_t__ MkSpoolDir (char*,int) ;
 char* gOurDirectoryPath ;

int
CanSpool(void)
{
 char sdir[256];

 if (gOurDirectoryPath[0] == '\0') {
  return (-1);
 }
 if (MkSpoolDir(sdir, sizeof(sdir)) < 0)
  return (-1);
 return (0);
}
