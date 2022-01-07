
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtable_member {int member; int interface; int path; } ;


 int assert (struct vtable_member const*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int vtable_member_compare_func(const struct vtable_member *x, const struct vtable_member *y) {
        int r;

        assert(x);
        assert(y);

        r = strcmp(x->path, y->path);
        if (r != 0)
                return r;

        r = strcmp(x->interface, y->interface);
        if (r != 0)
                return r;

        return strcmp(x->member, y->member);
}
