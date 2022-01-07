
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {int * meta; } ;
typedef TYPE_1__ Context ;


 size_t META_ARGV_GID ;
 size_t META_ARGV_UID ;
 scalar_t__ SYSTEM_UID_MAX ;
 int drop_privileges (scalar_t__,scalar_t__,int ) ;
 int get_user_creds (char const**,scalar_t__*,scalar_t__*,int *,int *,int ) ;
 int log_warning_errno (int,char*,char const*) ;
 int parse_gid (int ,scalar_t__*) ;
 int parse_uid (int ,scalar_t__*) ;

__attribute__((used)) static int change_uid_gid(const Context *context) {
        uid_t uid;
        gid_t gid;
        int r;

        r = parse_uid(context->meta[META_ARGV_UID], &uid);
        if (r < 0)
                return r;

        if (uid <= SYSTEM_UID_MAX) {
                const char *user = "systemd-coredump";

                r = get_user_creds(&user, &uid, &gid, ((void*)0), ((void*)0), 0);
                if (r < 0) {
                        log_warning_errno(r, "Cannot resolve %s user. Proceeding to dump core as root: %m", user);
                        uid = gid = 0;
                }
        } else {
                r = parse_gid(context->meta[META_ARGV_GID], &gid);
                if (r < 0)
                        return r;
        }

        return drop_privileges(uid, gid, 0);
}
