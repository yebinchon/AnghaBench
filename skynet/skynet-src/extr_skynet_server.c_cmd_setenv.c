
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int skynet_setenv (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *
cmd_setenv(struct skynet_context * context, const char * param) {
 size_t sz = strlen(param);
 char key[sz+1];
 int i;
 for (i=0;param[i] != ' ' && param[i];i++) {
  key[i] = param[i];
 }
 if (param[i] == '\0')
  return ((void*)0);

 key[i] = '\0';
 param += i+1;

 skynet_setenv(key,param);
 return ((void*)0);
}
