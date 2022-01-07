
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drop_caches () ;
 scalar_t__ dropcaches ;
 int run_process (char*,char**) ;
 char* script ;
 int sync () ;
 scalar_t__ synccaches ;

__attribute__((used)) static int
post_hook(char *phase)
{
 char *argv[3] = { script, phase, (char *)0 };
 int rc;

 if (synccaches)
  sync();

 if (dropcaches) {
  rc = drop_caches();
  if (rc)
   return (rc);
 }

 rc = run_process(script, argv);
 if (rc)
  return (rc);

 return (0);
}
