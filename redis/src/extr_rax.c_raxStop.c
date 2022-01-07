
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key; scalar_t__ key_static_string; int stack; } ;
typedef TYPE_1__ raxIterator ;


 int raxStackFree (int *) ;
 int rax_free (scalar_t__) ;

void raxStop(raxIterator *it) {
    if (it->key != it->key_static_string) rax_free(it->key);
    raxStackFree(&it->stack);
}
