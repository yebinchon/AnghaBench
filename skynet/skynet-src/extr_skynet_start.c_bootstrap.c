
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int exit (int) ;
 int skynet_context_dispatchall (struct skynet_context*) ;
 struct skynet_context* skynet_context_new (char*,char*) ;
 int skynet_error (int *,char*,char const*) ;
 int sscanf (char const*,char*,char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
bootstrap(struct skynet_context * logger, const char * cmdline) {
 int sz = strlen(cmdline);
 char name[sz+1];
 char args[sz+1];
 sscanf(cmdline, "%s %s", name, args);
 struct skynet_context *ctx = skynet_context_new(name, args);
 if (ctx == ((void*)0)) {
  skynet_error(((void*)0), "Bootstrap error : %s\n", cmdline);
  skynet_context_dispatchall(logger);
  exit(1);
 }
}
