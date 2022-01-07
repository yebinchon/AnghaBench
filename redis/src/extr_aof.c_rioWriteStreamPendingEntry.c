
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delivery_count; int delivery_time; } ;
typedef TYPE_1__ streamNACK ;
typedef int streamID ;
struct TYPE_6__ {char* name; } ;
typedef TYPE_2__ streamConsumer ;
typedef int robj ;
typedef int rio ;


 scalar_t__ rioWriteBulkCount (int *,char,int) ;
 scalar_t__ rioWriteBulkLongLong (int *,int ) ;
 scalar_t__ rioWriteBulkObject (int *,int *) ;
 scalar_t__ rioWriteBulkStreamID (int *,int *) ;
 scalar_t__ rioWriteBulkString (int *,char const*,int) ;
 int sdslen (char*) ;
 int streamDecodeID (unsigned char*,int *) ;

int rioWriteStreamPendingEntry(rio *r, robj *key, const char *groupname, size_t groupname_len, streamConsumer *consumer, unsigned char *rawid, streamNACK *nack) {


    streamID id;
    streamDecodeID(rawid,&id);
    if (rioWriteBulkCount(r,'*',12) == 0) return 0;
    if (rioWriteBulkString(r,"XCLAIM",6) == 0) return 0;
    if (rioWriteBulkObject(r,key) == 0) return 0;
    if (rioWriteBulkString(r,groupname,groupname_len) == 0) return 0;
    if (rioWriteBulkString(r,consumer->name,sdslen(consumer->name)) == 0) return 0;
    if (rioWriteBulkString(r,"0",1) == 0) return 0;
    if (rioWriteBulkStreamID(r,&id) == 0) return 0;
    if (rioWriteBulkString(r,"TIME",4) == 0) return 0;
    if (rioWriteBulkLongLong(r,nack->delivery_time) == 0) return 0;
    if (rioWriteBulkString(r,"RETRYCOUNT",10) == 0) return 0;
    if (rioWriteBulkLongLong(r,nack->delivery_count) == 0) return 0;
    if (rioWriteBulkString(r,"JUSTID",6) == 0) return 0;
    if (rioWriteBulkString(r,"FORCE",5) == 0) return 0;
    return 1;
}
