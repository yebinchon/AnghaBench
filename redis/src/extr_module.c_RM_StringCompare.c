
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;


 int compareStringObjects (int *,int *) ;

int RM_StringCompare(RedisModuleString *a, RedisModuleString *b) {
    return compareStringObjects(a,b);
}
