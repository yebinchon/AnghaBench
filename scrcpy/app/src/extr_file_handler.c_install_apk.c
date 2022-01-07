
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_t ;


 int adb_install (char const*,char const*) ;

__attribute__((used)) static process_t
install_apk(const char *serial, const char *file) {
    return adb_install(serial, file);
}
