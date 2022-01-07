
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef scalar_t__ gid_t ;
struct TYPE_4__ {int ref_gid; } ;
typedef TYPE_1__ Unit ;


 int manager_ref_gid ;
 int unit_ref_uid_internal (TYPE_1__*,int *,int ,int,int ) ;

int unit_ref_gid(Unit *u, gid_t gid, bool clean_ipc) {
        return unit_ref_uid_internal(u, (uid_t*) &u->ref_gid, (uid_t) gid, clean_ipc, manager_ref_gid);
}
