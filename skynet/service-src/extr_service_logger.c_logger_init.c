
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct logger {int close; int * handle; int filename; } ;


 int * fopen (char const*,char*) ;
 int logger_cb ;
 int skynet_callback (struct skynet_context*,struct logger*,int ) ;
 int skynet_malloc (scalar_t__) ;
 int * stdout ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int
logger_init(struct logger * inst, struct skynet_context *ctx, const char * parm) {
 if (parm) {
  inst->handle = fopen(parm,"w");
  if (inst->handle == ((void*)0)) {
   return 1;
  }
  inst->filename = skynet_malloc(strlen(parm)+1);
  strcpy(inst->filename, parm);
  inst->close = 1;
 } else {
  inst->handle = stdout;
 }
 if (inst->handle) {
  skynet_callback(ctx, inst, logger_cb);
  return 0;
 }
 return 1;
}
