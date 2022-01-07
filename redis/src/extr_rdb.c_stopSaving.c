
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REDISMODULE_EVENT_PERSISTENCE ;
 int REDISMODULE_SUBEVENT_PERSISTENCE_ENDED ;
 int REDISMODULE_SUBEVENT_PERSISTENCE_FAILED ;
 int moduleFireServerEvent (int ,int ,int *) ;

void stopSaving(int success) {

    moduleFireServerEvent(REDISMODULE_EVENT_PERSISTENCE,
                          success?
                            REDISMODULE_SUBEVENT_PERSISTENCE_ENDED:
                            REDISMODULE_SUBEVENT_PERSISTENCE_FAILED,
                          ((void*)0));
}
