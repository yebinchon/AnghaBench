
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pel; int seen_time; } ;
typedef TYPE_1__ streamConsumer ;
struct TYPE_10__ {int consumers; } ;
typedef TYPE_2__ streamCG ;
typedef int ssize_t ;
typedef int rio ;
struct TYPE_11__ {int key_len; int key; TYPE_1__* data; } ;
typedef TYPE_3__ raxIterator ;


 scalar_t__ raxNext (TYPE_3__*) ;
 int raxSeek (TYPE_3__*,char*,int *,int ) ;
 int raxSize (int ) ;
 int raxStart (TYPE_3__*,int ) ;
 int raxStop (TYPE_3__*) ;
 int rdbSaveLen (int *,int ) ;
 int rdbSaveMillisecondTime (int *,int ) ;
 int rdbSaveRawString (int *,int ,int ) ;
 int rdbSaveStreamPEL (int *,int ,int ) ;

size_t rdbSaveStreamConsumers(rio *rdb, streamCG *cg) {
    ssize_t n, nwritten = 0;


    if ((n = rdbSaveLen(rdb,raxSize(cg->consumers))) == -1) return -1;
    nwritten += n;


    raxIterator ri;
    raxStart(&ri,cg->consumers);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {
        streamConsumer *consumer = ri.data;


        if ((n = rdbSaveRawString(rdb,ri.key,ri.key_len)) == -1) return -1;
        nwritten += n;


        if ((n = rdbSaveMillisecondTime(rdb,consumer->seen_time)) == -1)
            return -1;
        nwritten += n;





        if ((n = rdbSaveStreamPEL(rdb,consumer->pel,0)) == -1)
            return -1;
        nwritten += n;
    }
    raxStop(&ri);
    return nwritten;
}
