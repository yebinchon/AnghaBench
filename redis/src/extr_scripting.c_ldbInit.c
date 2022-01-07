
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbuf; scalar_t__ lines; int * src; void* children; void* logs; scalar_t__ active; int * conn; } ;


 TYPE_1__ ldb ;
 void* listCreate () ;
 int listSetFreeMethod (void*,void (*) (void*)) ;
 int sdsempty () ;
 scalar_t__ sdsfree ;

void ldbInit(void) {
    ldb.conn = ((void*)0);
    ldb.active = 0;
    ldb.logs = listCreate();
    listSetFreeMethod(ldb.logs,(void (*)(void*))sdsfree);
    ldb.children = listCreate();
    ldb.src = ((void*)0);
    ldb.lines = 0;
    ldb.cbuf = sdsempty();
}
