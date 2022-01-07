
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int gid_t ;
typedef int Unit ;
struct TYPE_3__ {int remove_ipc; } ;
typedef TYPE_1__ ExecContext ;


 int assert (int *) ;
 int log_unit_warning_errno (int *,int,char*) ;
 TYPE_1__* unit_get_exec_context (int *) ;
 int unit_ref_uid_gid_internal (int *,int ,int ,int) ;

int unit_ref_uid_gid(Unit *u, uid_t uid, gid_t gid) {
        ExecContext *c;
        int r;

        assert(u);

        c = unit_get_exec_context(u);

        r = unit_ref_uid_gid_internal(u, uid, gid, c ? c->remove_ipc : 0);
        if (r < 0)
                return log_unit_warning_errno(u, r, "Couldn't add UID/GID reference to unit, proceeding without: %m");

        return r;
}
