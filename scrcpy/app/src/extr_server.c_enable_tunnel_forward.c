
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int process_t ;


 int SOCKET_NAME ;
 int adb_forward (char const*,int ,int ) ;
 int process_check_success (int ,char*) ;

__attribute__((used)) static bool
enable_tunnel_forward(const char *serial, uint16_t local_port) {
    process_t process = adb_forward(serial, local_port, SOCKET_NAME);
    return process_check_success(process, "adb forward");
}
