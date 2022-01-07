
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_queue_item {int file; int state; } ;


 int WRITE_STRING_FILE_ATOMIC ;
 int WRITE_STRING_FILE_CREATE ;
 int WRITE_STRING_FILE_MKDIR_0755 ;
 int log_debug (char*,int ,int ) ;
 int log_error_errno (int,char*,int ) ;
 int one_zero (int ) ;
 int write_string_file (int ,int ,int) ;

__attribute__((used)) static int save_state_write_one(struct write_queue_item *item) {
        int r;

        r = write_string_file(item->file, one_zero(item->state), WRITE_STRING_FILE_CREATE|WRITE_STRING_FILE_ATOMIC|WRITE_STRING_FILE_MKDIR_0755);
        if (r < 0)
                return log_error_errno(r, "Failed to write state file %s: %m", item->file);

        log_debug("Saved state '%s' to %s.", one_zero(item->state), item->file);
        return 0;
}
