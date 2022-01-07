
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; struct TYPE_7__ const* type; int interface; } ;
typedef TYPE_1__ Member ;


 int assert (TYPE_1__ const*) ;
 int strcmp (TYPE_1__ const*,TYPE_1__ const*) ;
 int strcmp_ptr (int ,int ) ;

__attribute__((used)) static int member_compare_func(const Member *x, const Member *y) {
        int d;

        assert(x);
        assert(y);
        assert(x->type);
        assert(y->type);

        d = strcmp_ptr(x->interface, y->interface);
        if (d != 0)
                return d;

        d = strcmp(x->type, y->type);
        if (d != 0)
                return d;

        return strcmp_ptr(x->name, y->name);
}
