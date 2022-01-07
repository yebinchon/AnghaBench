
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {int uid_refs; } ;
typedef TYPE_1__ Manager ;


 int manager_ref_uid_internal (TYPE_1__*,int *,int ,int) ;

int manager_ref_uid(Manager *m, uid_t uid, bool clean_ipc) {
        return manager_ref_uid_internal(m, &m->uid_refs, uid, clean_ipc);
}
