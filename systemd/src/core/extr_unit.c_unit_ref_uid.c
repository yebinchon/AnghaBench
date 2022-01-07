
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {int ref_uid; } ;
typedef TYPE_1__ Unit ;


 int manager_ref_uid ;
 int unit_ref_uid_internal (TYPE_1__*,int *,int ,int,int ) ;

int unit_ref_uid(Unit *u, uid_t uid, bool clean_ipc) {
        return unit_ref_uid_internal(u, &u->ref_uid, uid, clean_ipc, manager_ref_uid);
}
