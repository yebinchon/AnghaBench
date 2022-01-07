
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_8__ {int in_userns; int type; } ;
typedef TYPE_1__ CustomMount ;







 int assert (char const*) ;
 int assert_not_reached (char*) ;
 int mount_arbitrary (char const*,TYPE_1__*) ;
 int mount_bind (char const*,TYPE_1__*) ;
 int mount_inaccessible (char const*,TYPE_1__*) ;
 int mount_overlay (char const*,TYPE_1__*) ;
 int mount_tmpfs (char const*,TYPE_1__*,int,int ,int ,char const*) ;

int mount_custom(
                const char *dest,
                CustomMount *mounts, size_t n,
                bool userns, uid_t uid_shift, uid_t uid_range,
                const char *selinux_apifs_context,
                bool in_userns) {

        size_t i;
        int r;

        assert(dest);

        for (i = 0; i < n; i++) {
                CustomMount *m = mounts + i;

                if (m->in_userns != in_userns)
                        continue;

                switch (m->type) {

                case 131:
                        r = mount_bind(dest, m);
                        break;

                case 128:
                        r = mount_tmpfs(dest, m, userns, uid_shift, uid_range, selinux_apifs_context);
                        break;

                case 129:
                        r = mount_overlay(dest, m);
                        break;

                case 130:
                        r = mount_inaccessible(dest, m);
                        break;

                case 132:
                        r = mount_arbitrary(dest, m);
                        break;

                default:
                        assert_not_reached("Unknown custom mount type");
                }

                if (r < 0)
                        return r;
        }

        return 0;
}
