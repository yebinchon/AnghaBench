
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int IP_Port ;


 scalar_t__ NUM_FIRST ;
 scalar_t__ NUM_LAST ;
 int ck_abort_msg (char*) ;
 int first_ip ;
 int last_ip ;

void dht_ip_callback(void *object, int32_t number, IP_Port ip_port)
{
    if (NUM_FIRST == number) {
        first_ip = 1;
        return;
    }

    if (NUM_LAST == number) {
        last_ip = 1;
        return;
    }

    ck_abort_msg("Error.");
}
