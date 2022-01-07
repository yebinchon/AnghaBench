
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sentinelRedisInstance ;
typedef int sds ;
struct TYPE_2__ {int masters; } ;


 int * dictFetchValue (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 TYPE_1__ sentinel ;

sentinelRedisInstance *sentinelGetMasterByName(char *name) {
    sentinelRedisInstance *ri;
    sds sdsname = sdsnew(name);

    ri = dictFetchValue(sentinel.masters,sdsname);
    sdsfree(sdsname);
    return ri;
}
