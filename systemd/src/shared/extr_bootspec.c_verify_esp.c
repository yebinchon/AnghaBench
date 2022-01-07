
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct statfs {int f_type; } ;
typedef int sd_id128_t ;
typedef int dev_t ;


 scalar_t__ EACCES ;
 int EADDRNOTAVAIL ;
 int ENODEV ;
 scalar_t__ ENOENT ;
 int F_TYPE_EQUAL (int ,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MSDOS_SUPER_MAGIC ;
 int SD_ID128_NULL ;
 scalar_t__ SYNTHETIC_ERRNO (int ) ;
 int assert (char const*) ;
 scalar_t__ detect_container () ;
 scalar_t__ errno ;
 scalar_t__ getenv_bool (char*) ;
 int log_full_errno (int ,scalar_t__,char*,char const*) ;
 scalar_t__ statfs (char const*,struct statfs*) ;
 int verify_esp_blkid (int ,int,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int verify_esp_udev (int ,int,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int verify_fsroot_dir (char const*,int,int,int *) ;

__attribute__((used)) static int verify_esp(
                const char *p,
                bool searching,
                bool unprivileged_mode,
                uint32_t *ret_part,
                uint64_t *ret_pstart,
                uint64_t *ret_psize,
                sd_id128_t *ret_uuid) {

        bool relax_checks;
        dev_t devid;
        int r;

        assert(p);
        relax_checks = getenv_bool("SYSTEMD_RELAX_ESP_CHECKS") > 0;




        if (!relax_checks) {
                struct statfs sfs;

                if (statfs(p, &sfs) < 0)

                        return log_full_errno((searching && errno == ENOENT) ||
                                              (unprivileged_mode && errno == EACCES) ? LOG_DEBUG : LOG_ERR, errno,
                                              "Failed to check file system type of \"%s\": %m", p);

                if (!F_TYPE_EQUAL(sfs.f_type, MSDOS_SUPER_MAGIC))
                        return log_full_errno(searching ? LOG_DEBUG : LOG_ERR,
                                              SYNTHETIC_ERRNO(searching ? EADDRNOTAVAIL : ENODEV),
                                              "File system \"%s\" is not a FAT EFI System Partition (ESP) file system.", p);
        }

        r = verify_fsroot_dir(p, searching, unprivileged_mode, &devid);
        if (r < 0)
                return r;



        if (detect_container() > 0 || relax_checks)
                goto finish;






        if (unprivileged_mode)
                return verify_esp_udev(devid, searching, ret_part, ret_pstart, ret_psize, ret_uuid);
        else
                return verify_esp_blkid(devid, searching, ret_part, ret_pstart, ret_psize, ret_uuid);

finish:
        if (ret_part)
                *ret_part = 0;
        if (ret_pstart)
                *ret_pstart = 0;
        if (ret_psize)
                *ret_psize = 0;
        if (ret_uuid)
                *ret_uuid = SD_ID128_NULL;

        return 0;
}
