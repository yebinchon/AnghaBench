
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {int uid_refs; } ;
typedef TYPE_1__ Manager ;


 int clean_ipc_by_uid ;
 int manager_unref_uid_internal (TYPE_1__*,int *,int ,int,int ) ;

void manager_unref_uid(Manager *m, uid_t uid, bool destroy_now) {
        manager_unref_uid_internal(m, &m->uid_refs, uid, destroy_now, clean_ipc_by_uid);
}
