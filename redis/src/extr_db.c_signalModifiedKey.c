
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int redisDb ;


 int touchWatchedKey (int *,int *) ;
 int trackingInvalidateKey (int *) ;

void signalModifiedKey(redisDb *db, robj *key) {
    touchWatchedKey(db,key);
    trackingInvalidateKey(key);
}
