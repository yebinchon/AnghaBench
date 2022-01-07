
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int log_device_debug (int *,char*,char const*) ;
 int log_device_debug_errno (int *,int,char*,char const*) ;
 char* strjoina (char const*,char*) ;
 int write_string_file (char const*,char*,int ) ;

__attribute__((used)) static int synthesize_change_one(sd_device *dev, const char *syspath) {
        const char *filename;
        int r;

        filename = strjoina(syspath, "/uevent");
        log_device_debug(dev, "device is closed, synthesising 'change' on %s", syspath);
        r = write_string_file(filename, "change", WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                return log_device_debug_errno(dev, r, "Failed to write 'change' to %s: %m", filename);
        return 0;
}
