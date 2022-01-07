
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int ENOKEY ;
 int SD_ID128_NULL ;
 int arg_xbootldr_path ;
 int find_xbootldr_and_warn (int ,int,char**,int *) ;
 int free_and_replace (int ,char*) ;
 int log_debug (char*,int ) ;
 int log_debug_errno (int,char*) ;
 int mfree (int ) ;

__attribute__((used)) static int acquire_xbootldr(bool unprivileged_mode, sd_id128_t *ret_uuid) {
        char *np;
        int r;

        r = find_xbootldr_and_warn(arg_xbootldr_path, unprivileged_mode, &np, ret_uuid);
        if (r == -ENOKEY) {
                log_debug_errno(r, "Didn't find an XBOOTLDR partition, using the ESP as $BOOT.");
                if (ret_uuid)
                        *ret_uuid = SD_ID128_NULL;
                arg_xbootldr_path = mfree(arg_xbootldr_path);
                return 0;
        }
        if (r < 0)
                return r;

        free_and_replace(arg_xbootldr_path, np);
        log_debug("Using XBOOTLDR partition at %s as $BOOT.", arg_xbootldr_path);

        return 1;
}
