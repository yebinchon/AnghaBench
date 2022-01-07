
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int streamNACK ;
struct TYPE_12__ {int pel; } ;
typedef TYPE_1__ streamConsumer ;
struct TYPE_13__ {int consumers; int pel; } ;
typedef TYPE_2__ streamCG ;
typedef scalar_t__ sds ;
struct TYPE_14__ {unsigned char* key; int key_len; int * data; } ;
typedef TYPE_3__ raxIterator ;


 scalar_t__ raxNext (TYPE_3__*) ;
 int raxRemove (int ,unsigned char*,int ,int *) ;
 int raxSeek (TYPE_3__*,char*,int *,int ) ;
 int raxSize (int ) ;
 int raxStart (TYPE_3__*,int ) ;
 int raxStop (TYPE_3__*) ;
 int sdslen (scalar_t__) ;
 int streamFreeConsumer (TYPE_1__*) ;
 int streamFreeNACK (int *) ;
 TYPE_1__* streamLookupConsumer (TYPE_2__*,scalar_t__,int ) ;

uint64_t streamDelConsumer(streamCG *cg, sds name) {
    streamConsumer *consumer = streamLookupConsumer(cg,name,0);
    if (consumer == ((void*)0)) return 0;

    uint64_t retval = raxSize(consumer->pel);



    raxIterator ri;
    raxStart(&ri,consumer->pel);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {
        streamNACK *nack = ri.data;
        raxRemove(cg->pel,ri.key,ri.key_len,((void*)0));
        streamFreeNACK(nack);
    }
    raxStop(&ri);


    raxRemove(cg->consumers,(unsigned char*)name,sdslen(name),((void*)0));
    streamFreeConsumer(consumer);
    return retval;
}
