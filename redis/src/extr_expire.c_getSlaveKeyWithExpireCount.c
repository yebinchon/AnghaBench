
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t dictSize (int *) ;
 int * slaveKeysWithExpire ;

size_t getSlaveKeyWithExpireCount(void) {
    if (slaveKeysWithExpire == ((void*)0)) return 0;
    return dictSize(slaveKeysWithExpire);
}
