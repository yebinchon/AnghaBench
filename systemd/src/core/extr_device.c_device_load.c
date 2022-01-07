
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int description; int id; } ;
typedef TYPE_1__ Unit ;


 int log_unit_debug_errno (TYPE_1__*,int,char*) ;
 int unit_load_fragment_and_dropin (TYPE_1__*,int) ;
 int unit_name_to_path (int ,int *) ;

__attribute__((used)) static int device_load(Unit *u) {
        int r;

        r = unit_load_fragment_and_dropin(u, 0);
        if (r < 0)
                return r;

        if (!u->description) {


                r = unit_name_to_path(u->id, &u->description);
                if (r < 0)
                        log_unit_debug_errno(u, r, "Failed to unescape name: %m");
        }

        return 0;
}
