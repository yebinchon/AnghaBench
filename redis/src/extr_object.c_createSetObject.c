
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int encoding; } ;
typedef TYPE_1__ robj ;
typedef int dict ;


 int OBJ_ENCODING_HT ;
 int OBJ_SET ;
 TYPE_1__* createObject (int ,int *) ;
 int * dictCreate (int *,int *) ;
 int setDictType ;

robj *createSetObject(void) {
    dict *d = dictCreate(&setDictType,((void*)0));
    robj *o = createObject(OBJ_SET,d);
    o->encoding = OBJ_ENCODING_HT;
    return o;
}
