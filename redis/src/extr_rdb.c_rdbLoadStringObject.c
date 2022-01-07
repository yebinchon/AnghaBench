
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int rio ;


 int RDB_LOAD_NONE ;
 int * rdbGenericLoadStringObject (int *,int ,int *) ;

robj *rdbLoadStringObject(rio *rdb) {
    return rdbGenericLoadStringObject(rdb,RDB_LOAD_NONE,((void*)0));
}
