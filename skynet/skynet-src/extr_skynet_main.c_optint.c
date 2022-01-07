
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skynet_getenv (char const*) ;
 int skynet_setenv (char const*,char*) ;
 int sprintf (char*,char*,int) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int
optint(const char *key, int opt) {
 const char * str = skynet_getenv(key);
 if (str == ((void*)0)) {
  char tmp[20];
  sprintf(tmp,"%d",opt);
  skynet_setenv(key, tmp);
  return opt;
 }
 return strtol(str, ((void*)0), 10);
}
