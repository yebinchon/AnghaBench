
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ Context ;


 int _PROP_MAX ;
 int assert (TYPE_1__*) ;
 int mfree (int ) ;

__attribute__((used)) static void context_reset(Context *c) {
        int p;

        assert(c);

        for (p = 0; p < _PROP_MAX; p++)
                c->data[p] = mfree(c->data[p]);
}
