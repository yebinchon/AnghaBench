
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ C_OK ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 scalar_t__ TerminateModuleForkChild (int,int) ;

int RM_KillForkChild(int child_pid) {

    if (TerminateModuleForkChild(child_pid,1) == C_OK)
        return REDISMODULE_OK;
    else
        return REDISMODULE_ERR;
}
