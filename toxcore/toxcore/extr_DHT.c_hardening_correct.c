
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int send_nodes_ok; int testing_requests; scalar_t__ routes_requests_ok; } ;
typedef TYPE_1__ Hardening ;



__attribute__((used)) static uint8_t hardening_correct(const Hardening *h)
{
    return h->routes_requests_ok + (h->send_nodes_ok << 1) + (h->testing_requests << 2);
}
