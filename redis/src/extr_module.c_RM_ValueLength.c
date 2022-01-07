
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ RedisModuleKey ;







 size_t hashTypeLength (TYPE_2__*) ;
 size_t listTypeLength (TYPE_2__*) ;
 size_t setTypeSize (TYPE_2__*) ;
 size_t stringObjectLen (TYPE_2__*) ;
 size_t zsetLength (TYPE_2__*) ;

size_t RM_ValueLength(RedisModuleKey *key) {
    if (key == ((void*)0) || key->value == ((void*)0)) return 0;
    switch(key->value->type) {
    case 129: return stringObjectLen(key->value);
    case 131: return listTypeLength(key->value);
    case 130: return setTypeSize(key->value);
    case 128: return zsetLength(key->value);
    case 132: return hashTypeLength(key->value);
    default: return 0;
    }
}
