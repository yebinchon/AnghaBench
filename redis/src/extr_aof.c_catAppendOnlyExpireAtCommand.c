
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct redisCommand {scalar_t__ proc; } ;
typedef int sds ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ robj ;


 int catAppendOnlyGenericCommand (int ,int,TYPE_1__**) ;
 TYPE_1__* createStringObject (char*,int) ;
 TYPE_1__* createStringObjectFromLongLong (long long) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ expireCommand ;
 scalar_t__ expireatCommand ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 scalar_t__ mstime () ;
 scalar_t__ pexpireCommand ;
 scalar_t__ psetexCommand ;
 scalar_t__ setexCommand ;
 long long strtoll (int ,int *,int) ;

sds catAppendOnlyExpireAtCommand(sds buf, struct redisCommand *cmd, robj *key, robj *seconds) {
    long long when;
    robj *argv[3];


    seconds = getDecodedObject(seconds);
    when = strtoll(seconds->ptr,((void*)0),10);

    if (cmd->proc == expireCommand || cmd->proc == setexCommand ||
        cmd->proc == expireatCommand)
    {
        when *= 1000;
    }

    if (cmd->proc == expireCommand || cmd->proc == pexpireCommand ||
        cmd->proc == setexCommand || cmd->proc == psetexCommand)
    {
        when += mstime();
    }
    decrRefCount(seconds);

    argv[0] = createStringObject("PEXPIREAT",9);
    argv[1] = key;
    argv[2] = createStringObjectFromLongLong(when);
    buf = catAppendOnlyGenericCommand(buf, 3, argv);
    decrRefCount(argv[0]);
    decrRefCount(argv[2]);
    return buf;
}
