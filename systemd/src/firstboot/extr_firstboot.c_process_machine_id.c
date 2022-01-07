
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int SD_ID128_STRING_MAX ;
 int WRITE_STRING_FILE_CREATE ;
 int WRITE_STRING_FILE_MKDIR_0755 ;
 int WRITE_STRING_FILE_SYNC ;
 int arg_machine_id ;
 int arg_root ;
 scalar_t__ laccess (char const*,int ) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,char const*) ;
 char* prefix_roota (int ,char*) ;
 scalar_t__ sd_id128_is_null (int ) ;
 int sd_id128_to_string (int ,char*) ;
 int write_string_file (char const*,int ,int) ;

__attribute__((used)) static int process_machine_id(void) {
        const char *etc_machine_id;
        char id[SD_ID128_STRING_MAX];
        int r;

        etc_machine_id = prefix_roota(arg_root, "/etc/machine-id");
        if (laccess(etc_machine_id, F_OK) >= 0)
                return 0;

        if (sd_id128_is_null(arg_machine_id))
                return 0;

        r = write_string_file(etc_machine_id, sd_id128_to_string(arg_machine_id, id),
                              WRITE_STRING_FILE_CREATE | WRITE_STRING_FILE_SYNC | WRITE_STRING_FILE_MKDIR_0755);
        if (r < 0)
                return log_error_errno(r, "Failed to write machine id: %m");

        log_info("%s written.", etc_machine_id);
        return 0;
}
