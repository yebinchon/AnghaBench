
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int log_info (char*,int ,int ) ;
 int sd_bus_message_get_interface (int *) ;
 int sd_bus_message_get_member (int *) ;
 int strna (int ) ;

__attribute__((used)) static int match_callback(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        log_info("Match triggered! interface=%s member=%s", strna(sd_bus_message_get_interface(m)), strna(sd_bus_message_get_member(m)));
        return 0;
}
