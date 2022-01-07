
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisReply ;
typedef int clusterManagerNode ;


 int UNUSED (int *) ;

__attribute__((used)) static int clusterManagerOnSetOwnerErr(redisReply *reply,
    clusterManagerNode *n, int bulk_idx)
{
    UNUSED(reply);
    UNUSED(n);

    return (bulk_idx != 1);
}
