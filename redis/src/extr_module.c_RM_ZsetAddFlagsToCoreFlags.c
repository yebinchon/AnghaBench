
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REDISMODULE_ZADD_NX ;
 int REDISMODULE_ZADD_XX ;
 int ZADD_NX ;
 int ZADD_XX ;

int RM_ZsetAddFlagsToCoreFlags(int flags) {
    int retflags = 0;
    if (flags & REDISMODULE_ZADD_XX) retflags |= ZADD_XX;
    if (flags & REDISMODULE_ZADD_NX) retflags |= ZADD_NX;
    return retflags;
}
