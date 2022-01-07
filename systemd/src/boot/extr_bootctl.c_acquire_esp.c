
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int sd_id128_t ;


 int ENOKEY ;
 int arg_esp_path ;
 int find_esp_and_warn (int ,int,char**,int *,int *,int *,int *) ;
 int free_and_replace (int ,char*) ;
 int log_debug (char*,int ) ;
 int log_error_errno (int,char*) ;

__attribute__((used)) static int acquire_esp(
                bool unprivileged_mode,
                uint32_t *ret_part,
                uint64_t *ret_pstart,
                uint64_t *ret_psize,
                sd_id128_t *ret_uuid) {

        char *np;
        int r;







        r = find_esp_and_warn(arg_esp_path, unprivileged_mode, &np, ret_part, ret_pstart, ret_psize, ret_uuid);
        if (r == -ENOKEY)
                return log_error_errno(r,
                                       "Couldn't find EFI system partition. It is recommended to mount it to /boot or /efi.\n"
                                       "Alternatively, use --esp-path= to specify path to mount point.");
        if (r < 0)
                return r;

        free_and_replace(arg_esp_path, np);
        log_debug("Using EFI System Partition at %s.", arg_esp_path);

        return 1;
}
