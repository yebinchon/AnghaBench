
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct logger {int handle; int filename; } ;




 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int freopen (int ,char*,int ) ;
 int fwrite (void const*,size_t,int,int ) ;

__attribute__((used)) static int
logger_cb(struct skynet_context * context, void *ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
 struct logger * inst = ud;
 switch (type) {
 case 129:
  if (inst->filename) {
   inst->handle = freopen(inst->filename, "a", inst->handle);
  }
  break;
 case 128:
  fprintf(inst->handle, "[:%08x] ",source);
  fwrite(msg, sz , 1, inst->handle);
  fprintf(inst->handle, "\n");
  fflush(inst->handle);
  break;
 }

 return 0;
}
