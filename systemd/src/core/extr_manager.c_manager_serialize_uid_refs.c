
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uid_refs; } ;
typedef TYPE_1__ Manager ;
typedef int FILE ;


 int manager_serialize_uid_refs_internal (TYPE_1__*,int *,int *,char*) ;

void manager_serialize_uid_refs(Manager *m, FILE *f) {
        manager_serialize_uid_refs_internal(m, f, &m->uid_refs, "destroy-ipc-uid");
}
