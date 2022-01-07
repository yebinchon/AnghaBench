
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 int clusterSendPublish (int *,int *,int *) ;

void clusterPropagatePublish(robj *channel, robj *message) {
    clusterSendPublish(((void*)0), channel, message);
}
