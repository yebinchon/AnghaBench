
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int remote ;
typedef int process_t ;


 int ARRAY_LEN (char const* const*) ;
 int adb_execute (char const*,char const* const*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

process_t
adb_reverse_remove(const char *serial, const char *device_socket_name) {
    char remote[108 + 14 + 1];
    snprintf(remote, sizeof(remote), "localabstract:%s", device_socket_name);
    const char *const adb_cmd[] = {"reverse", "--remove", remote};
    return adb_execute(serial, adb_cmd, ARRAY_LEN(adb_cmd));
}
