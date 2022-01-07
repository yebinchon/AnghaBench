
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void HelloTypeObject ;
typedef int int64_t ;
typedef int RedisModuleIO ;


 int HelloTypeInsert (void*,int ) ;
 int RedisModule_LoadSigned (int *) ;
 int RedisModule_LoadUnsigned (int *) ;
 void* createHelloTypeObject () ;

void *HelloTypeRdbLoad(RedisModuleIO *rdb, int encver) {
    if (encver != 0) {

        return ((void*)0);
    }
    uint64_t elements = RedisModule_LoadUnsigned(rdb);
    struct HelloTypeObject *hto = createHelloTypeObject();
    while(elements--) {
        int64_t ele = RedisModule_LoadSigned(rdb);
        HelloTypeInsert(hto,ele);
    }
    return hto;
}
