
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int Unit ;


 int assert (int *) ;
 scalar_t__ gid_is_valid (int ) ;
 scalar_t__ uid_is_valid (int ) ;
 int unit_ref_gid (int *,int ,int) ;
 int unit_ref_uid (int *,int ,int) ;
 int unit_unref_uid (int *,int) ;

__attribute__((used)) static int unit_ref_uid_gid_internal(Unit *u, uid_t uid, gid_t gid, bool clean_ipc) {
        int r = 0, q = 0;

        assert(u);



        if (uid_is_valid(uid)) {
                r = unit_ref_uid(u, uid, clean_ipc);
                if (r < 0)
                        return r;
        }

        if (gid_is_valid(gid)) {
                q = unit_ref_gid(u, gid, clean_ipc);
                if (q < 0) {
                        if (r > 0)
                                unit_unref_uid(u, 0);

                        return q;
                }
        }

        return r > 0 || q > 0;
}
