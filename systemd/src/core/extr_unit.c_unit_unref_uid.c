
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref_uid; } ;
typedef TYPE_1__ Unit ;


 int manager_unref_uid ;
 int unit_unref_uid_internal (TYPE_1__*,int *,int,int ) ;

void unit_unref_uid(Unit *u, bool destroy_now) {
        unit_unref_uid_internal(u, &u->ref_uid, destroy_now, manager_unref_uid);
}
