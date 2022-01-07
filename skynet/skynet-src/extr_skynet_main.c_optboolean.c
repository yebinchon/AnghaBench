
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skynet_getenv (char const*) ;
 int skynet_setenv (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
optboolean(const char *key, int opt) {
 const char * str = skynet_getenv(key);
 if (str == ((void*)0)) {
  skynet_setenv(key, opt ? "true" : "false");
  return opt;
 }
 return strcmp(str,"true")==0;
}
