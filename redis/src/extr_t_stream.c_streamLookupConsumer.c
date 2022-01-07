
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int seen_time; int pel; int name; } ;
typedef TYPE_1__ streamConsumer ;
struct TYPE_10__ {int consumers; } ;
typedef TYPE_2__ streamCG ;
typedef scalar_t__ sds ;


 int mstime () ;
 TYPE_1__* raxFind (int ,unsigned char*,int ) ;
 int raxInsert (int ,unsigned char*,int ,TYPE_1__*,int *) ;
 int raxNew () ;
 TYPE_1__* raxNotFound ;
 int sdsdup (scalar_t__) ;
 int sdslen (scalar_t__) ;
 TYPE_1__* zmalloc (int) ;

streamConsumer *streamLookupConsumer(streamCG *cg, sds name, int create) {
    streamConsumer *consumer = raxFind(cg->consumers,(unsigned char*)name,
                               sdslen(name));
    if (consumer == raxNotFound) {
        if (!create) return ((void*)0);
        consumer = zmalloc(sizeof(*consumer));
        consumer->name = sdsdup(name);
        consumer->pel = raxNew();
        raxInsert(cg->consumers,(unsigned char*)name,sdslen(name),
                  consumer,((void*)0));
    }
    consumer->seen_time = mstime();
    return consumer;
}
