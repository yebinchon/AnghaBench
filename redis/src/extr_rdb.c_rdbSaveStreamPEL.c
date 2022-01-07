
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int delivery_count; int delivery_time; } ;
typedef TYPE_1__ streamNACK ;
typedef int streamID ;
typedef int ssize_t ;
typedef int rio ;
struct TYPE_8__ {TYPE_1__* data; int key; } ;
typedef TYPE_2__ raxIterator ;
typedef int rax ;


 scalar_t__ raxNext (TYPE_2__*) ;
 int raxSeek (TYPE_2__*,char*,int *,int ) ;
 int raxSize (int *) ;
 int raxStart (TYPE_2__*,int *) ;
 int raxStop (TYPE_2__*) ;
 int rdbSaveLen (int *,int ) ;
 int rdbSaveMillisecondTime (int *,int ) ;
 int rdbWriteRaw (int *,int ,int) ;

ssize_t rdbSaveStreamPEL(rio *rdb, rax *pel, int nacks) {
    ssize_t n, nwritten = 0;


    if ((n = rdbSaveLen(rdb,raxSize(pel))) == -1) return -1;
    nwritten += n;


    raxIterator ri;
    raxStart(&ri,pel);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {


        if ((n = rdbWriteRaw(rdb,ri.key,sizeof(streamID))) == -1) return -1;
        nwritten += n;

        if (nacks) {
            streamNACK *nack = ri.data;
            if ((n = rdbSaveMillisecondTime(rdb,nack->delivery_time)) == -1)
                return -1;
            nwritten += n;
            if ((n = rdbSaveLen(rdb,nack->delivery_count)) == -1) return -1;
            nwritten += n;



        }
    }
    raxStop(&ri);
    return nwritten;
}
