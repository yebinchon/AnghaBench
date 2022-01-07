
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned char uint64_t ;
typedef int robj ;
struct TYPE_8__ {void* ptr; } ;
struct TYPE_9__ {TYPE_1__ buffer; } ;
struct TYPE_10__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;


 int RDB_VERSION ;
 unsigned char crc64 (int ,unsigned char*,int ) ;
 int memrev64ifbe (unsigned char*) ;
 int rdbSaveObject (TYPE_3__*,int *,int *) ;
 int rdbSaveObjectType (TYPE_3__*,int *) ;
 int rioInitWithBuffer (TYPE_3__*,int ) ;
 void* sdscatlen (void*,unsigned char*,int) ;
 int sdsempty () ;
 int sdslen (void*) ;
 int serverAssert (int ) ;

void createDumpPayload(rio *payload, robj *o, robj *key) {
    unsigned char buf[2];
    uint64_t crc;



    rioInitWithBuffer(payload,sdsempty());
    serverAssert(rdbSaveObjectType(payload,o));
    serverAssert(rdbSaveObject(payload,o,key));
    buf[0] = RDB_VERSION & 0xff;
    buf[1] = (RDB_VERSION >> 8) & 0xff;
    payload->io.buffer.ptr = sdscatlen(payload->io.buffer.ptr,buf,2);


    crc = crc64(0,(unsigned char*)payload->io.buffer.ptr,
                sdslen(payload->io.buffer.ptr));
    memrev64ifbe(&crc);
    payload->io.buffer.ptr = sdscatlen(payload->io.buffer.ptr,&crc,8);
}
