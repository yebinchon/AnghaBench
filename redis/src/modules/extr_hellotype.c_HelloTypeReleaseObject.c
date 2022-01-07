
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HelloTypeObject {struct HelloTypeObject* next; struct HelloTypeObject* head; } ;
struct HelloTypeNode {struct HelloTypeNode* next; struct HelloTypeNode* head; } ;


 int RedisModule_Free (struct HelloTypeObject*) ;

void HelloTypeReleaseObject(struct HelloTypeObject *o) {
    struct HelloTypeNode *cur, *next;
    cur = o->head;
    while(cur) {
        next = cur->next;
        RedisModule_Free(cur);
        cur = next;
    }
    RedisModule_Free(o);
}
