
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ EEXIST ;
 int False ;
 int S_IRWXU ;
 int True ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int mkdir (char*,int ) ;
 int perror (char*) ;
 int sprintf (char*,char*,char*,char*) ;

BOOL
rd_pstcache_mkdir(void)
{
 char *home;
 char bmpcache_dir[256];

 home = getenv("HOME");

 if (home == ((void*)0))
  return False;

 sprintf(bmpcache_dir, "%s/%s", home, ".rdesktop");

 if ((mkdir(bmpcache_dir, S_IRWXU) == -1) && errno != EEXIST)
 {
  perror(bmpcache_dir);
  return False;
 }

 sprintf(bmpcache_dir, "%s/%s", home, ".rdesktop/cache");

 if ((mkdir(bmpcache_dir, S_IRWXU) == -1) && errno != EEXIST)
 {
  perror(bmpcache_dir);
  return False;
 }

 return True;
}
