
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;


 int adns__debug (int ,int,int ,char*,char const*,...) ;
 char* getenv (char const*) ;

__attribute__((used)) static const char *instrum_getenv(adns_state ads, const char *envvar) {
  const char *value;

  value= getenv(envvar);
  if (!value) adns__debug(ads,-1,0,"environment variable %s not set",envvar);
  else adns__debug(ads,-1,0,"environment variable %s set to `%s'",envvar,value);
  return value;
}
