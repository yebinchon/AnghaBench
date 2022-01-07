
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int Unit ;


 int assert (int *) ;
 int unit_add_to_dbus_queue (int *) ;
 int unit_ref_uid_gid (int *,int ,int ) ;

void unit_notify_user_lookup(Unit *u, uid_t uid, gid_t gid) {
        int r;

        assert(u);





        r = unit_ref_uid_gid(u, uid, gid);
        if (r > 0)
                unit_add_to_dbus_queue(u);
}
