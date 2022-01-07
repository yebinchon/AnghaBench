
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; struct TYPE_3__* parent; } ;
typedef TYPE_1__ tree ;



__attribute__((used)) static void add_parents_to_cache(tree* t) {
    while (t->parent) {
        t = t->parent;
        t->write = 1;
    }
}
