
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_1__ client_id; } ;
typedef TYPE_2__ DHCPRequest ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void dhcp_request_free(DHCPRequest *req) {
        if (!req)
                return;

        free(req->client_id.data);
        free(req);
}
