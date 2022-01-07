
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int renamed_commands; struct TYPE_3__* master; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int sds ;


 char* dictFetchValue (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;

char *sentinelInstanceMapCommand(sentinelRedisInstance *ri, char *command) {
    sds sc = sdsnew(command);
    if (ri->master) ri = ri->master;
    char *retval = dictFetchValue(ri->renamed_commands, sc);
    sdsfree(sc);
    return retval ? retval : command;
}
