
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int touchWatchedKeysOnFlush (int) ;
 int trackingInvalidateKeysOnFlush (int) ;

void signalFlushedDb(int dbid) {
    touchWatchedKeysOnFlush(dbid);
    trackingInvalidateKeysOnFlush(dbid);
}
