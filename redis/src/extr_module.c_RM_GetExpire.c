
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_3__ {int * value; int key; int db; } ;
typedef TYPE_1__ RedisModuleKey ;


 int getExpire (int ,int ) ;
 scalar_t__ mstime () ;

mstime_t RM_GetExpire(RedisModuleKey *key) {
    mstime_t expire = getExpire(key->db,key->key);
    if (expire == -1 || key->value == ((void*)0)) return -1;
    expire -= mstime();
    return expire >= 0 ? expire : 0;
}
