
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int encoding; } ;
typedef TYPE_1__ robj ;
typedef int rio ;


 int OBJ_ENCODING_HT ;
 int OBJ_ENCODING_INTSET ;
 int OBJ_ENCODING_QUICKLIST ;
 int OBJ_ENCODING_SKIPLIST ;
 int OBJ_ENCODING_ZIPLIST ;







 int RDB_TYPE_HASH ;
 int RDB_TYPE_HASH_ZIPLIST ;
 int RDB_TYPE_LIST_QUICKLIST ;
 int RDB_TYPE_MODULE_2 ;
 int RDB_TYPE_SET ;
 int RDB_TYPE_SET_INTSET ;
 int RDB_TYPE_STREAM_LISTPACKS ;
 int RDB_TYPE_STRING ;
 int RDB_TYPE_ZSET_2 ;
 int RDB_TYPE_ZSET_ZIPLIST ;
 int rdbSaveType (int *,int ) ;
 int serverPanic (char*) ;

int rdbSaveObjectType(rio *rdb, robj *o) {
    switch (o->type) {
    case 129:
        return rdbSaveType(rdb,RDB_TYPE_STRING);
    case 133:
        if (o->encoding == OBJ_ENCODING_QUICKLIST)
            return rdbSaveType(rdb,RDB_TYPE_LIST_QUICKLIST);
        else
            serverPanic("Unknown list encoding");
    case 131:
        if (o->encoding == OBJ_ENCODING_INTSET)
            return rdbSaveType(rdb,RDB_TYPE_SET_INTSET);
        else if (o->encoding == OBJ_ENCODING_HT)
            return rdbSaveType(rdb,RDB_TYPE_SET);
        else
            serverPanic("Unknown set encoding");
    case 128:
        if (o->encoding == OBJ_ENCODING_ZIPLIST)
            return rdbSaveType(rdb,RDB_TYPE_ZSET_ZIPLIST);
        else if (o->encoding == OBJ_ENCODING_SKIPLIST)
            return rdbSaveType(rdb,RDB_TYPE_ZSET_2);
        else
            serverPanic("Unknown sorted set encoding");
    case 134:
        if (o->encoding == OBJ_ENCODING_ZIPLIST)
            return rdbSaveType(rdb,RDB_TYPE_HASH_ZIPLIST);
        else if (o->encoding == OBJ_ENCODING_HT)
            return rdbSaveType(rdb,RDB_TYPE_HASH);
        else
            serverPanic("Unknown hash encoding");
    case 130:
        return rdbSaveType(rdb,RDB_TYPE_STREAM_LISTPACKS);
    case 132:
        return rdbSaveType(rdb,RDB_TYPE_MODULE_2);
    default:
        serverPanic("Unknown object type");
    }
    return -1;
}
