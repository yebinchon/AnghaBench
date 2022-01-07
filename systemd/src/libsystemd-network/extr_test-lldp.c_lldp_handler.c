
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_lldp_neighbor ;
typedef int sd_lldp_event ;
typedef int sd_lldp ;


 int lldp_handler_calls ;

__attribute__((used)) static void lldp_handler(sd_lldp *lldp, sd_lldp_event event, sd_lldp_neighbor *n, void *userdata) {
        lldp_handler_calls++;
}
