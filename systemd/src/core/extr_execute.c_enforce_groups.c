
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int errno ;
 scalar_t__ gid_is_valid (int ) ;
 int maybe_setgroups (int,int const*) ;
 scalar_t__ setresgid (int ,int ,int ) ;

__attribute__((used)) static int enforce_groups(gid_t gid, const gid_t *supplementary_gids, int ngids) {
        int r;


        if (ngids > 0) {
                r = maybe_setgroups(ngids, supplementary_gids);
                if (r < 0)
                        return r;
        }

        if (gid_is_valid(gid)) {

                if (setresgid(gid, gid, gid) < 0)
                        return -errno;
        }

        return 0;
}
