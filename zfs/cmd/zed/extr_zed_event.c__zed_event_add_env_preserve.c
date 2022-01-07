
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef int uint64_t ;


 int _zed_event_add_var (int ,int *,int *,char const*,char*,char const*) ;
 int assert (int ) ;
 char* getenv (char const*) ;

__attribute__((used)) static void
_zed_event_add_env_preserve(uint64_t eid, zed_strings_t *zsp)
{
 const char *env_preserve[] = {
  "TZ",
  ((void*)0)
 };
 const char **keyp;
 const char *val;

 assert(zsp != ((void*)0));

 for (keyp = env_preserve; *keyp; keyp++) {
  if ((val = getenv(*keyp)))
   _zed_event_add_var(eid, zsp, ((void*)0), *keyp, "%s", val);
 }
}
