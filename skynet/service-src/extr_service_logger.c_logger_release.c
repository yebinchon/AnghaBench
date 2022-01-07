
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {struct logger* filename; int handle; scalar_t__ close; } ;


 int fclose (int ) ;
 int skynet_free (struct logger*) ;

void
logger_release(struct logger * inst) {
 if (inst->close) {
  fclose(inst->handle);
 }
 skynet_free(inst->filename);
 skynet_free(inst);
}
