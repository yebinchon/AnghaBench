
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ scmp_filter_ctx ;


 scalar_t__ EEXIST ;
 int ENOMEM ;
 int SCMP_ACT_ALLOW ;
 int SCMP_ARCH_NATIVE ;
 int SCMP_FLTATR_ACT_BADARCH ;
 int SCMP_FLTATR_CTL_NNP ;
 int assert (int) ;
 int seccomp_arch_add (scalar_t__,int ) ;
 scalar_t__ seccomp_arch_exist (scalar_t__,int ) ;
 int seccomp_arch_native () ;
 int seccomp_arch_remove (scalar_t__,int ) ;
 int seccomp_attr_set (scalar_t__,int ,int ) ;
 scalar_t__ seccomp_init (int ) ;
 int seccomp_release (scalar_t__) ;

int seccomp_init_for_arch(scmp_filter_ctx *ret, uint32_t arch, uint32_t default_action) {
        scmp_filter_ctx seccomp;
        int r;




        seccomp = seccomp_init(default_action);
        if (!seccomp)
                return -ENOMEM;

        if (arch != SCMP_ARCH_NATIVE &&
            arch != seccomp_arch_native()) {

                r = seccomp_arch_remove(seccomp, seccomp_arch_native());
                if (r < 0)
                        goto finish;

                r = seccomp_arch_add(seccomp, arch);
                if (r < 0)
                        goto finish;

                assert(seccomp_arch_exist(seccomp, arch) >= 0);
                assert(seccomp_arch_exist(seccomp, SCMP_ARCH_NATIVE) == -EEXIST);
                assert(seccomp_arch_exist(seccomp, seccomp_arch_native()) == -EEXIST);
        } else {
                assert(seccomp_arch_exist(seccomp, SCMP_ARCH_NATIVE) >= 0);
                assert(seccomp_arch_exist(seccomp, seccomp_arch_native()) >= 0);
        }

        r = seccomp_attr_set(seccomp, SCMP_FLTATR_ACT_BADARCH, SCMP_ACT_ALLOW);
        if (r < 0)
                goto finish;

        r = seccomp_attr_set(seccomp, SCMP_FLTATR_CTL_NNP, 0);
        if (r < 0)
                goto finish;

        *ret = seccomp;
        return 0;

finish:
        seccomp_release(seccomp);
        return r;
}
