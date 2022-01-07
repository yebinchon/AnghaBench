
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UnitFileState ;
struct TYPE_6__ {scalar_t__ unit_file_state; int id; TYPE_1__* manager; scalar_t__ fragment_path; } ;
typedef TYPE_2__ Unit ;
struct TYPE_5__ {int unit_file_scope; } ;


 scalar_t__ UNIT_FILE_BAD ;
 int assert (TYPE_2__*) ;
 int unit_file_get_state (int ,int *,int ,scalar_t__*) ;

UnitFileState unit_get_unit_file_state(Unit *u) {
        int r;

        assert(u);

        if (u->unit_file_state < 0 && u->fragment_path) {
                r = unit_file_get_state(
                                u->manager->unit_file_scope,
                                ((void*)0),
                                u->id,
                                &u->unit_file_state);
                if (r < 0)
                        u->unit_file_state = UNIT_FILE_BAD;
        }

        return u->unit_file_state;
}
