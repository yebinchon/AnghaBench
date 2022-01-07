
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_6__ {scalar_t__ where; } ;
typedef TYPE_1__ Automount ;


 TYPE_4__* UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int path_simplify (scalar_t__,int) ;
 int unit_name_to_path (int ,scalar_t__*) ;

__attribute__((used)) static int automount_set_where(Automount *a) {
        int r;

        assert(a);

        if (a->where)
                return 0;

        r = unit_name_to_path(UNIT(a)->id, &a->where);
        if (r < 0)
                return r;

        path_simplify(a->where, 0);
        return 1;
}
