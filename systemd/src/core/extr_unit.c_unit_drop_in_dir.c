
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UnitWriteFlags ;
struct TYPE_8__ {TYPE_2__* manager; scalar_t__ transient; } ;
typedef TYPE_3__ Unit ;
struct TYPE_6__ {char const* transient; char const* persistent_control; char const* runtime_control; } ;
struct TYPE_7__ {TYPE_1__ lookup_paths; } ;


 int UNIT_PERSISTENT ;
 int UNIT_RUNTIME ;
 scalar_t__ UNIT_WRITE_FLAGS_NOOP (int) ;
 int assert (TYPE_3__*) ;

__attribute__((used)) static const char* unit_drop_in_dir(Unit *u, UnitWriteFlags flags) {
        assert(u);

        if (UNIT_WRITE_FLAGS_NOOP(flags))
                return ((void*)0);

        if (u->transient)
                return u->manager->lookup_paths.transient;

        if (flags & UNIT_PERSISTENT)
                return u->manager->lookup_paths.persistent_control;

        if (flags & UNIT_RUNTIME)
                return u->manager->lookup_paths.runtime_control;

        return ((void*)0);
}
