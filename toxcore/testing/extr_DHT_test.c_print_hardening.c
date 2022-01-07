
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int testing_pingedid; scalar_t__ testing_timestamp; int testing_requests; int send_nodes_pingedid; scalar_t__ send_nodes_timestamp; int send_nodes_ok; int routes_requests_pingedid; scalar_t__ routes_requests_timestamp; int routes_requests_ok; } ;
typedef TYPE_1__ Hardening ;


 int print_client_id (int ) ;
 int printf (char*,...) ;

void print_hardening(Hardening *h)
{
    printf("Hardening:\n");
    printf("routes_requests_ok: %hhu\n", h->routes_requests_ok);
    printf("routes_requests_timestamp: %llu\n", (long long unsigned int)h->routes_requests_timestamp);
    printf("routes_requests_pingedid: ");
    print_client_id(h->routes_requests_pingedid);
    printf("\nsend_nodes_ok: %hhu\n", h->send_nodes_ok);
    printf("send_nodes_timestamp: %llu\n", (long long unsigned int)h->send_nodes_timestamp);
    printf("send_nodes_pingedid: ");
    print_client_id(h->send_nodes_pingedid);
    printf("\ntesting_requests: %hhu\n", h->testing_requests);
    printf("testing_timestamp: %llu\n", (long long unsigned int)h->testing_timestamp);
    printf("testing_pingedid: ");
    print_client_id(h->testing_pingedid);
    printf("\n\n");
}
