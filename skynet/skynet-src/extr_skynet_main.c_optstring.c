
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skynet_getenv (char const*) ;
 int skynet_setenv (char const*,char const*) ;

__attribute__((used)) static const char *
optstring(const char *key,const char * opt) {
 const char * str = skynet_getenv(key);
 if (str == ((void*)0)) {
  if (opt) {
   skynet_setenv(key, opt);
   opt = skynet_getenv(key);
  }
  return opt;
 }
 return str;
}
