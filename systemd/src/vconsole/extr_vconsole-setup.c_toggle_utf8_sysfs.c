
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int enable_disable (int) ;
 int log_debug (char*,int ) ;
 int log_warning_errno (int,char*,int ) ;
 int one_zero (int) ;
 int write_string_file (char*,int ,int ) ;

__attribute__((used)) static int toggle_utf8_sysfs(bool utf8) {
        int r;

        r = write_string_file("/sys/module/vt/parameters/default_utf8", one_zero(utf8), WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                return log_warning_errno(r, "Failed to %s sysfs UTF-8 flag: %m", enable_disable(utf8));

        log_debug("Sysfs UTF-8 flag %sd", enable_disable(utf8));
        return 0;
}
