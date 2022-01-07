
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* message; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ DHCPRequest ;


 int assert (TYPE_2__*) ;
 int htobe16 (int) ;

__attribute__((used)) static bool requested_broadcast(DHCPRequest *req) {
        assert(req);

        return req->message->flags & htobe16(0x8000);
}
