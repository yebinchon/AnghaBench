
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum process_result { ____Placeholder_process_result } process_result ;
typedef int buf ;


 int LOGE (char*,...) ;



 int argv_to_string (char const* const*,char*,int) ;

__attribute__((used)) static void
show_adb_err_msg(enum process_result err, const char *const argv[]) {
    char buf[512];
    switch (err) {
        case 130:
            argv_to_string(argv, buf, sizeof(buf));
            LOGE("Failed to execute: %s", buf);
            break;
        case 129:
            argv_to_string(argv, buf, sizeof(buf));
            LOGE("Command not found: %s", buf);
            LOGE("(make 'adb' accessible from your PATH or define its full"
                 "path in the ADB environment variable)");
            break;
        case 128:

            break;
    }
}
