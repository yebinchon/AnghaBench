
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int port; int ip; } ;
struct TYPE_5__ {int hardening; scalar_t__ ret_timestamp; TYPE_1__ ret_ip_port; scalar_t__ last_pinged; scalar_t__ timestamp; TYPE_1__ ip_port; } ;
typedef TYPE_1__ IP_Port ;
typedef TYPE_2__ IPPTsPng ;


 char* ip_ntoa (int *) ;
 int ntohs (int ) ;
 int print_hardening (int *) ;
 int printf (char*,...) ;

void print_assoc(IPPTsPng *assoc, uint8_t ours)
{
    IP_Port *ipp = &assoc->ip_port;
    printf("\nIP: %s Port: %u", ip_ntoa(&ipp->ip), ntohs(ipp->port));
    printf("\nTimestamp: %llu", (long long unsigned int) assoc->timestamp);
    printf("\nLast pinged: %llu\n", (long long unsigned int) assoc->last_pinged);

    ipp = &assoc->ret_ip_port;

    if (ours)
        printf("OUR IP: %s Port: %u\n", ip_ntoa(&ipp->ip), ntohs(ipp->port));
    else
        printf("RET IP: %s Port: %u\n", ip_ntoa(&ipp->ip), ntohs(ipp->port));

    printf("Timestamp: %llu\n", (long long unsigned int) assoc->ret_timestamp);
    print_hardening(&assoc->hardening);

}
