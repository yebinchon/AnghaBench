
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; int key; } ;
typedef TYPE_1__ Option ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static Option *option_free(Option *o) {
        if (!o)
                return ((void*)0);

        free(o->key);
        free(o->value);

        return mfree(o);
}
