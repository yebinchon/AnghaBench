
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LabelFixFlags ;


 int mac_selinux_fix (char const*,int ) ;
 int mac_smack_fix (char const*,int ) ;

int label_fix(const char *path, LabelFixFlags flags) {
        int r, q;

        r = mac_selinux_fix(path, flags);
        q = mac_smack_fix(path, flags);

        if (r < 0)
                return r;
        if (q < 0)
                return q;

        return 0;
}
