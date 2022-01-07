
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned long HOSTID_MASK ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,unsigned long*) ;
 char* getenv (char*) ;
 unsigned long strtoull (char*,int *,int ) ;

__attribute__((used)) static unsigned long
get_spl_hostid(void)
{
 FILE *f;
 unsigned long hostid;
 char *env;




 env = getenv("ZFS_HOSTID");
 if (env) {
  hostid = strtoull(env, ((void*)0), 0);
  return (hostid & HOSTID_MASK);
 }

 f = fopen("/sys/module/spl/parameters/spl_hostid", "r");
 if (!f)
  return (0);

 if (fscanf(f, "%lu", &hostid) != 1)
  hostid = 0;

 fclose(f);

 return (hostid & HOSTID_MASK);
}
