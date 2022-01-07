
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int robj ;
struct TYPE_4__ {void* value; int * type; } ;
typedef TYPE_1__ moduleValue ;
typedef int moduleType ;


 int OBJ_MODULE ;
 int * createObject (int ,TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

robj *createModuleObject(moduleType *mt, void *value) {
    moduleValue *mv = zmalloc(sizeof(*mv));
    mv->type = mt;
    mv->value = value;
    return createObject(OBJ_MODULE,mv);
}
