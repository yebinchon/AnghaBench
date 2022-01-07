
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;
typedef int dev_t ;


 int SD_ID128_NULL ;
 int assert (char const*) ;
 scalar_t__ detect_container () ;
 scalar_t__ getenv_bool (char*) ;
 int verify_fsroot_dir (char const*,int,int,int *) ;
 int verify_xbootldr_blkid (int ,int,int *) ;
 int verify_xbootldr_udev (int ,int,int *) ;

__attribute__((used)) static int verify_xbootldr(
                const char *p,
                bool searching,
                bool unprivileged_mode,
                sd_id128_t *ret_uuid) {

        bool relax_checks;
        dev_t devid;
        int r;

        assert(p);

        relax_checks = getenv_bool("SYSTEMD_RELAX_XBOOTLDR_CHECKS") > 0;

        r = verify_fsroot_dir(p, searching, unprivileged_mode, &devid);
        if (r < 0)
                return r;

        if (detect_container() > 0 || relax_checks)
                goto finish;

        if (unprivileged_mode)
                return verify_xbootldr_udev(devid, searching, ret_uuid);
        else
                return verify_xbootldr_blkid(devid, searching, ret_uuid);

finish:
        if (ret_uuid)
                *ret_uuid = SD_ID128_NULL;

        return 0;
}
