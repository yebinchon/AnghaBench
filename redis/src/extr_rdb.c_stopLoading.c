
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loading; } ;


 int REDISMODULE_EVENT_LOADING ;
 int REDISMODULE_SUBEVENT_LOADING_ENDED ;
 int REDISMODULE_SUBEVENT_LOADING_FAILED ;
 int moduleFireServerEvent (int ,int ,int *) ;
 int * rdbFileBeingLoaded ;
 TYPE_1__ server ;

void stopLoading(int success) {
    server.loading = 0;
    rdbFileBeingLoaded = ((void*)0);


    moduleFireServerEvent(REDISMODULE_EVENT_LOADING,
                          success?
                            REDISMODULE_SUBEVENT_LOADING_ENDED:
                            REDISMODULE_SUBEVENT_LOADING_FAILED,
                          ((void*)0));
}
