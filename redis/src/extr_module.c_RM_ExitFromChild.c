
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_INFO_TYPE_MODULE ;
 int REDISMODULE_OK ;
 int exitFromChild (int) ;
 int sendChildCOWInfo (int ,char*) ;

int RM_ExitFromChild(int retcode) {
    sendChildCOWInfo(CHILD_INFO_TYPE_MODULE, "Module fork");
    exitFromChild(retcode);
    return REDISMODULE_OK;
}
