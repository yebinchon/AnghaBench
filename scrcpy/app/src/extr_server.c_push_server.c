
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_t ;


 int DEVICE_SERVER_PATH ;
 int adb_push (char const*,int ,int ) ;
 int get_server_path () ;
 int process_check_success (int ,char*) ;

__attribute__((used)) static bool
push_server(const char *serial) {
    process_t process = adb_push(serial, get_server_path(), DEVICE_SERVER_PATH);
    return process_check_success(process, "adb push");
}
