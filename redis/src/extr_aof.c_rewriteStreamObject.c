
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ pel; scalar_t__ consumers; int last_id; } ;
typedef TYPE_1__ streamNACK ;
typedef int streamIterator ;
typedef int streamID ;
typedef TYPE_1__ streamConsumer ;
typedef TYPE_1__ streamCG ;
struct TYPE_19__ {scalar_t__ cgroups; int last_id; scalar_t__ length; } ;
typedef TYPE_4__ stream ;
struct TYPE_20__ {TYPE_4__* ptr; } ;
typedef TYPE_5__ robj ;
typedef int rio ;
struct TYPE_21__ {int key_len; scalar_t__ key; TYPE_1__* data; } ;
typedef TYPE_6__ raxIterator ;
typedef int int64_t ;


 scalar_t__ raxNext (TYPE_6__*) ;
 int raxSeek (TYPE_6__*,char*,int *,int ) ;
 int raxStart (TYPE_6__*,scalar_t__) ;
 int raxStop (TYPE_6__*) ;
 scalar_t__ rioWriteBulkCount (int *,char,int) ;
 scalar_t__ rioWriteBulkObject (int *,TYPE_5__*) ;
 scalar_t__ rioWriteBulkStreamID (int *,int *) ;
 scalar_t__ rioWriteBulkString (int *,char*,int) ;
 scalar_t__ rioWriteStreamPendingEntry (int *,TYPE_5__*,char*,int,TYPE_1__*,scalar_t__,TYPE_1__*) ;
 int streamIteratorGetField (int *,unsigned char**,unsigned char**,int*,int*) ;
 scalar_t__ streamIteratorGetID (int *,int *,int*) ;
 int streamIteratorStart (int *,TYPE_4__*,int *,int *,int ) ;
 int streamIteratorStop (int *) ;

int rewriteStreamObject(rio *r, robj *key, robj *o) {
    stream *s = o->ptr;
    streamIterator si;
    streamIteratorStart(&si,s,((void*)0),((void*)0),0);
    streamID id;
    int64_t numfields;

    if (s->length) {

        while(streamIteratorGetID(&si,&id,&numfields)) {




            if (rioWriteBulkCount(r,'*',3+numfields*2) == 0) return 0;
            if (rioWriteBulkString(r,"XADD",4) == 0) return 0;
            if (rioWriteBulkObject(r,key) == 0) return 0;
            if (rioWriteBulkStreamID(r,&id) == 0) return 0;
            while(numfields--) {
                unsigned char *field, *value;
                int64_t field_len, value_len;
                streamIteratorGetField(&si,&field,&value,&field_len,&value_len);
                if (rioWriteBulkString(r,(char*)field,field_len) == 0) return 0;
                if (rioWriteBulkString(r,(char*)value,value_len) == 0) return 0;
            }
        }
    } else {



        if (rioWriteBulkCount(r,'*',7) == 0) return 0;
        if (rioWriteBulkString(r,"XADD",4) == 0) return 0;
        if (rioWriteBulkObject(r,key) == 0) return 0;
        if (rioWriteBulkString(r,"MAXLEN",6) == 0) return 0;
        if (rioWriteBulkString(r,"0",1) == 0) return 0;
        if (rioWriteBulkStreamID(r,&s->last_id) == 0) return 0;
        if (rioWriteBulkString(r,"x",1) == 0) return 0;
        if (rioWriteBulkString(r,"y",1) == 0) return 0;
    }



    if (rioWriteBulkCount(r,'*',3) == 0) return 0;
    if (rioWriteBulkString(r,"XSETID",6) == 0) return 0;
    if (rioWriteBulkObject(r,key) == 0) return 0;
    if (rioWriteBulkStreamID(r,&s->last_id) == 0) return 0;



    if (s->cgroups) {
        raxIterator ri;
        raxStart(&ri,s->cgroups);
        raxSeek(&ri,"^",((void*)0),0);
        while(raxNext(&ri)) {
            streamCG *group = ri.data;

            if (rioWriteBulkCount(r,'*',5) == 0) return 0;
            if (rioWriteBulkString(r,"XGROUP",6) == 0) return 0;
            if (rioWriteBulkString(r,"CREATE",6) == 0) return 0;
            if (rioWriteBulkObject(r,key) == 0) return 0;
            if (rioWriteBulkString(r,(char*)ri.key,ri.key_len) == 0) return 0;
            if (rioWriteBulkStreamID(r,&group->last_id) == 0) return 0;




            raxIterator ri_cons;
            raxStart(&ri_cons,group->consumers);
            raxSeek(&ri_cons,"^",((void*)0),0);
            while(raxNext(&ri_cons)) {
                streamConsumer *consumer = ri_cons.data;


                raxIterator ri_pel;
                raxStart(&ri_pel,consumer->pel);
                raxSeek(&ri_pel,"^",((void*)0),0);
                while(raxNext(&ri_pel)) {
                    streamNACK *nack = ri_pel.data;
                    if (rioWriteStreamPendingEntry(r,key,(char*)ri.key,
                                                   ri.key_len,consumer,
                                                   ri_pel.key,nack) == 0)
                    {
                        return 0;
                    }
                }
                raxStop(&ri_pel);
            }
            raxStop(&ri_cons);
        }
        raxStop(&ri);
    }

    streamIteratorStop(&si);
    return 1;
}
