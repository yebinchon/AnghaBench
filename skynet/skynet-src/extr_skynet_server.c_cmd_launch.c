
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {char const* result; int handle; } ;


 int id_to_hex (char const*,int ) ;
 struct skynet_context* skynet_context_new (char*,char*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static const char *
cmd_launch(struct skynet_context * context, const char * param) {
 size_t sz = strlen(param);
 char tmp[sz+1];
 strcpy(tmp,param);
 char * args = tmp;
 char * mod = strsep(&args, " \t\r\n");
 args = strsep(&args, "\r\n");
 struct skynet_context * inst = skynet_context_new(mod,args);
 if (inst == ((void*)0)) {
  return ((void*)0);
 } else {
  id_to_hex(context->result, inst->handle);
  return context->result;
 }
}
