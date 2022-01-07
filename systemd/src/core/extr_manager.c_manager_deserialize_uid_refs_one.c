
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uid_refs; } ;
typedef TYPE_1__ Manager ;


 int manager_deserialize_uid_refs_one_internal (TYPE_1__*,int *,char const*) ;

void manager_deserialize_uid_refs_one(Manager *m, const char *value) {
        manager_deserialize_uid_refs_one_internal(m, &m->uid_refs, value);
}
