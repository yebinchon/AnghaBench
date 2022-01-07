
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ gid_is_valid (scalar_t__) ;
 scalar_t__ uid_is_valid (scalar_t__) ;

__attribute__((used)) static bool match_uid_gid(uid_t subject_uid, gid_t subject_gid, uid_t delete_uid, gid_t delete_gid) {

        if (uid_is_valid(delete_uid) && subject_uid == delete_uid)
                return 1;

        if (gid_is_valid(delete_gid) && subject_gid == delete_gid)
                return 1;

        return 0;
}
