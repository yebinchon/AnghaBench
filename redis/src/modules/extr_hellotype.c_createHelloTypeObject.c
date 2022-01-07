
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HelloTypeObject {scalar_t__ len; int * head; } ;


 struct HelloTypeObject* RedisModule_Alloc (int) ;

struct HelloTypeObject *createHelloTypeObject(void) {
    struct HelloTypeObject *o;
    o = RedisModule_Alloc(sizeof(*o));
    o->head = ((void*)0);
    o->len = 0;
    return o;
}
