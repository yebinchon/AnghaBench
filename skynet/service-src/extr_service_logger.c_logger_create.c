
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {int * filename; scalar_t__ close; int * handle; } ;


 struct logger* skynet_malloc (int) ;

struct logger *
logger_create(void) {
 struct logger * inst = skynet_malloc(sizeof(*inst));
 inst->handle = ((void*)0);
 inst->close = 0;
 inst->filename = ((void*)0);

 return inst;
}
