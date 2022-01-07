
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uid_refs; } ;
typedef TYPE_1__ Manager ;


 int clean_ipc_by_uid ;
 int manager_vacuum_uid_refs_internal (TYPE_1__*,int *,int ) ;

void manager_vacuum_uid_refs(Manager *m) {
        manager_vacuum_uid_refs_internal(m, &m->uid_refs, clean_ipc_by_uid);
}
