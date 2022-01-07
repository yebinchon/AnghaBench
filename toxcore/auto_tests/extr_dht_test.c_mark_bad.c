
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ testing_requests; scalar_t__ send_nodes_ok; scalar_t__ routes_requests_ok; } ;
struct TYPE_5__ {TYPE_1__ hardening; scalar_t__ timestamp; } ;
typedef TYPE_2__ IPPTsPng ;


 int BAD_NODE_TIMEOUT ;
 scalar_t__ unix_time () ;

void mark_bad(IPPTsPng *ipptp)
{
    ipptp->timestamp = unix_time() - 2 * BAD_NODE_TIMEOUT;
    ipptp->hardening.routes_requests_ok = 0;
    ipptp->hardening.send_nodes_ok = 0;
    ipptp->hardening.testing_requests = 0;
}
