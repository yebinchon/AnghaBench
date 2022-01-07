
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ max_lease_time; int default_lease_time; } ;
typedef TYPE_2__ sd_dhcp_server ;
struct TYPE_9__ {void* data; scalar_t__ length; } ;
struct TYPE_11__ {scalar_t__ max_optlen; scalar_t__ lifetime; TYPE_1__ client_id; int chaddr; struct TYPE_11__* message; } ;
typedef TYPE_3__ DHCPRequest ;
typedef TYPE_3__ DHCPMessage ;


 scalar_t__ DHCP_MIN_OPTIONS_SIZE ;
 int ENOMEM ;
 scalar_t__ ETH_ALEN ;
 scalar_t__ MAX (unsigned long long,int ) ;
 int assert (TYPE_3__*) ;
 void* malloc0 (scalar_t__) ;
 int memcpy (int*,int *,scalar_t__) ;

__attribute__((used)) static int ensure_sane_request(sd_dhcp_server *server, DHCPRequest *req, DHCPMessage *message) {
        assert(req);
        assert(message);

        req->message = message;



        if (!req->client_id.data) {
                void *data;

                data = malloc0(ETH_ALEN + 1);
                if (!data)
                        return -ENOMEM;

                ((uint8_t*) data)[0] = 0x01;
                memcpy((uint8_t*) data + 1, &message->chaddr, ETH_ALEN);

                req->client_id.length = ETH_ALEN + 1;
                req->client_id.data = data;
        }

        if (req->max_optlen < DHCP_MIN_OPTIONS_SIZE)
                req->max_optlen = DHCP_MIN_OPTIONS_SIZE;

        if (req->lifetime <= 0)
                req->lifetime = MAX(1ULL, server->default_lease_time);

        if (server->max_lease_time > 0 && req->lifetime > server->max_lease_time)
                req->lifetime = server->max_lease_time;

        return 0;
}
