
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moduleLoadQueueEntry {int argc; int * argv; int path; } ;
typedef int sds ;
typedef int robj ;
struct TYPE_2__ {int loadmodule_queue; } ;


 int createRawStringObject (int ,int ) ;
 int listAddNodeTail (int ,struct moduleLoadQueueEntry*) ;
 int sdslen (int ) ;
 int sdsnew (int ) ;
 TYPE_1__ server ;
 void* zmalloc (int) ;

void queueLoadModule(sds path, sds *argv, int argc) {
    int i;
    struct moduleLoadQueueEntry *loadmod;

    loadmod = zmalloc(sizeof(struct moduleLoadQueueEntry));
    loadmod->argv = zmalloc(sizeof(robj*)*argc);
    loadmod->path = sdsnew(path);
    loadmod->argc = argc;
    for (i = 0; i < argc; i++) {
        loadmod->argv[i] = createRawStringObject(argv[i],sdslen(argv[i]));
    }
    listAddNodeTail(server.loadmodule_queue,loadmod);
}
