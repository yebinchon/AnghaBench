
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int redisDb ;


 int dbAdd (int *,int *,int *) ;
 int dbOverwrite (int *,int *,int *) ;
 int incrRefCount (int *) ;
 int * lookupKeyWrite (int *,int *) ;
 int removeExpire (int *,int *) ;
 int signalModifiedKey (int *,int *) ;

void setKey(redisDb *db, robj *key, robj *val) {
    if (lookupKeyWrite(db,key) == ((void*)0)) {
        dbAdd(db,key,val);
    } else {
        dbOverwrite(db,key,val);
    }
    incrRefCount(val);
    removeExpire(db,key);
    signalModifiedKey(db,key);
}
