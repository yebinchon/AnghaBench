
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct outqueuenode {int textlen; int* buffer; int* textp; scalar_t__ addr; } ;
struct TYPE_3__ {struct outqueuenode* tail; } ;


 int LIST_LINK_TAIL (TYPE_1__,struct outqueuenode*) ;
 TYPE_1__ outqueue ;
 int outqueuelen ;
 int peroutqueuenode ;
 void* xmalloc (int) ;

__attribute__((used)) static void queueoutchar(int c) {
  struct outqueuenode *entry;

  entry= outqueue.tail;
  if (!entry || entry->addr || entry->textlen >= peroutqueuenode) {
    peroutqueuenode= !peroutqueuenode || !entry || entry->addr ? 128 :
      peroutqueuenode >= 1024 ? 4096 : peroutqueuenode<<2;
    entry= xmalloc(sizeof(*entry));
    entry->buffer= xmalloc(peroutqueuenode);
    entry->textp= entry->buffer;
    entry->textlen= 0;
    entry->addr= 0;
    LIST_LINK_TAIL(outqueue,entry);
    outqueuelen++;
  }
  entry->textp[entry->textlen++]= c;
}
