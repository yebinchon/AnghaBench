
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ GID_INVALID ;
 scalar_t__ UID_INVALID ;
 int clean_posix_mq (scalar_t__,scalar_t__,int) ;
 int clean_posix_shm (scalar_t__,scalar_t__,int) ;
 int clean_sysvipc_msg (scalar_t__,scalar_t__,int) ;
 int clean_sysvipc_sem (scalar_t__,scalar_t__,int) ;
 int clean_sysvipc_shm (scalar_t__,scalar_t__,int) ;
 int gid_is_valid (scalar_t__) ;
 int uid_is_valid (scalar_t__) ;

int clean_ipc_internal(uid_t uid, gid_t gid, bool rm) {
        int ret = 0, r;
        if (uid == 0) {
                if (!rm)
                        return 1;

                uid = UID_INVALID;
        }
        if (gid == 0) {
                if (!rm)
                        return 1;

                gid = GID_INVALID;
        }


        if (!uid_is_valid(uid) && !gid_is_valid(gid))
                return 0;

        r = clean_sysvipc_shm(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = clean_sysvipc_sem(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = clean_sysvipc_msg(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = clean_posix_shm(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = clean_posix_mq(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        return ret;
}
