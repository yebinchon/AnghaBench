
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t items; void** stack; } ;
typedef TYPE_1__ raxStack ;



__attribute__((used)) static inline void *raxStackPop(raxStack *ts) {
    if (ts->items == 0) return ((void*)0);
    ts->items--;
    return ts->stack[ts->items];
}
