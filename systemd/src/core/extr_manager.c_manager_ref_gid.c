
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef scalar_t__ gid_t ;
struct TYPE_4__ {int gid_refs; } ;
typedef TYPE_1__ Manager ;


 int manager_ref_uid_internal (TYPE_1__*,int *,int ,int) ;

int manager_ref_gid(Manager *m, gid_t gid, bool clean_ipc) {
        return manager_ref_uid_internal(m, &m->gid_refs, (uid_t) gid, clean_ipc);
}
