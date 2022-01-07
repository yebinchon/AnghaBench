
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int robj ;


 scalar_t__ C_OK ;
 int * createIntsetObject () ;
 int * createSetObject () ;
 scalar_t__ isSdsRepresentableAsLongLong (int ,int *) ;

robj *setTypeCreate(sds value) {
    if (isSdsRepresentableAsLongLong(value,((void*)0)) == C_OK)
        return createIntsetObject();
    return createSetObject();
}
