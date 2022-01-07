
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int exported_invocation_id; int invocation_id_string; int id; int invocation_id; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int log_unit_debug_errno (TYPE_1__*,int,char*,char const*) ;
 scalar_t__ sd_id128_is_null (int ) ;
 char* strjoina (char*,int ) ;
 int symlink_atomic (int ,char const*) ;

__attribute__((used)) static int unit_export_invocation_id(Unit *u) {
        const char *p;
        int r;

        assert(u);

        if (u->exported_invocation_id)
                return 0;

        if (sd_id128_is_null(u->invocation_id))
                return 0;

        p = strjoina("/run/systemd/units/invocation:", u->id);
        r = symlink_atomic(u->invocation_id_string, p);
        if (r < 0)
                return log_unit_debug_errno(u, r, "Failed to create invocation ID symlink %s: %m", p);

        u->exported_invocation_id = 1;
        return 0;
}
