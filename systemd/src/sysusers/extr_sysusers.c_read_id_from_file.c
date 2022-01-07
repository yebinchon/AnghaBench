
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct stat {scalar_t__ st_gid; scalar_t__ st_uid; } ;
typedef scalar_t__ gid_t ;
struct TYPE_4__ {scalar_t__ gid_path; scalar_t__ uid_path; } ;
typedef TYPE_1__ Item ;


 int assert (TYPE_1__*) ;
 scalar_t__ root_stat (scalar_t__,struct stat*) ;

__attribute__((used)) static int read_id_from_file(Item *i, uid_t *_uid, gid_t *_gid) {
        struct stat st;
        bool found_uid = 0, found_gid = 0;
        uid_t uid = 0;
        gid_t gid = 0;

        assert(i);


        if (_gid && i->gid_path && root_stat(i->gid_path, &st) >= 0) {
                gid = st.st_gid;
                found_gid = 1;
        }


        if ((_uid || (_gid && !found_gid))
            && i->uid_path
            && root_stat(i->uid_path, &st) >= 0) {

                uid = st.st_uid;
                found_uid = 1;


                if (_gid && !found_gid) {
                        gid = st.st_gid;
                        found_gid = 1;
                }
        }


        if (_uid && !found_uid && i->gid_path) {

                if (found_gid) {
                        uid = (uid_t) gid;
                        found_uid = 1;
                } else if (root_stat(i->gid_path, &st) >= 0) {
                        uid = (uid_t) st.st_gid;
                        found_uid = 1;
                }
        }

        if (_uid) {
                if (!found_uid)
                        return 0;

                *_uid = uid;
        }

        if (_gid) {
                if (!found_gid)
                        return 0;

                *_gid = gid;
        }

        return 1;
}
