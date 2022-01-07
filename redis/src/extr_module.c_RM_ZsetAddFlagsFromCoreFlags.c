
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REDISMODULE_ZADD_ADDED ;
 int REDISMODULE_ZADD_NOP ;
 int REDISMODULE_ZADD_UPDATED ;
 int ZADD_ADDED ;
 int ZADD_NOP ;
 int ZADD_UPDATED ;

int RM_ZsetAddFlagsFromCoreFlags(int flags) {
    int retflags = 0;
    if (flags & ZADD_ADDED) retflags |= REDISMODULE_ZADD_ADDED;
    if (flags & ZADD_UPDATED) retflags |= REDISMODULE_ZADD_UPDATED;
    if (flags & ZADD_NOP) retflags |= REDISMODULE_ZADD_NOP;
    return retflags;
}
