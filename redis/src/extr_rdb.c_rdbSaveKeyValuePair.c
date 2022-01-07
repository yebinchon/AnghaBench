
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int robj ;
typedef int rio ;
struct TYPE_2__ {int maxmemory_policy; scalar_t__ rdb_key_save_delay; } ;


 int LFUDecrAndReturn (int *) ;
 int MAXMEMORY_FLAG_LFU ;
 int MAXMEMORY_FLAG_LRU ;
 int RDB_OPCODE_EXPIRETIME_MS ;
 int RDB_OPCODE_FREQ ;
 int RDB_OPCODE_IDLE ;
 int estimateObjectIdleTime (int *) ;
 int rdbSaveLen (int *,int) ;
 int rdbSaveMillisecondTime (int *,long long) ;
 int rdbSaveObject (int *,int *,int *) ;
 int rdbSaveObjectType (int *,int *) ;
 int rdbSaveStringObject (int *,int *) ;
 int rdbSaveType (int *,int ) ;
 int rdbWriteRaw (int *,int *,int) ;
 TYPE_1__ server ;
 int usleep (scalar_t__) ;

int rdbSaveKeyValuePair(rio *rdb, robj *key, robj *val, long long expiretime) {
    int savelru = server.maxmemory_policy & MAXMEMORY_FLAG_LRU;
    int savelfu = server.maxmemory_policy & MAXMEMORY_FLAG_LFU;


    if (expiretime != -1) {
        if (rdbSaveType(rdb,RDB_OPCODE_EXPIRETIME_MS) == -1) return -1;
        if (rdbSaveMillisecondTime(rdb,expiretime) == -1) return -1;
    }


    if (savelru) {
        uint64_t idletime = estimateObjectIdleTime(val);
        idletime /= 1000;
        if (rdbSaveType(rdb,RDB_OPCODE_IDLE) == -1) return -1;
        if (rdbSaveLen(rdb,idletime) == -1) return -1;
    }


    if (savelfu) {
        uint8_t buf[1];
        buf[0] = LFUDecrAndReturn(val);




        if (rdbSaveType(rdb,RDB_OPCODE_FREQ) == -1) return -1;
        if (rdbWriteRaw(rdb,buf,1) == -1) return -1;
    }


    if (rdbSaveObjectType(rdb,val) == -1) return -1;
    if (rdbSaveStringObject(rdb,key) == -1) return -1;
    if (rdbSaveObject(rdb,val,key) == -1) return -1;


    if (server.rdb_key_save_delay)
        usleep(server.rdb_key_save_delay);

    return 1;
}
