
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int assert (int *) ;
 int unit_unref_gid (int *,int) ;
 int unit_unref_uid (int *,int) ;

void unit_unref_uid_gid(Unit *u, bool destroy_now) {
        assert(u);

        unit_unref_uid(u, destroy_now);
        unit_unref_gid(u, destroy_now);
}
