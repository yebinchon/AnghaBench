
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ timestamp; } ;
struct TYPE_12__ {TYPE_2__ assoc6; TYPE_2__ assoc4; } ;
struct TYPE_11__ {unsigned int num_to_bootstrap; TYPE_4__* close_clientlist; int close_bootstrap_times; int self_public_key; int close_lastgetnodes; TYPE_1__* to_bootstrap; } ;
struct TYPE_9__ {int public_key; int ip_port; } ;
typedef TYPE_2__ IPPTsPng ;
typedef TYPE_3__ DHT ;
typedef TYPE_4__ Client_data ;


 scalar_t__ BAD_NODE_TIMEOUT ;
 size_t LCLIENT_LIST ;
 int do_ping_and_sendnode_requests (TYPE_3__*,int *,int ,TYPE_4__*,size_t,int *,int ) ;
 int getnodes (TYPE_3__*,int ,int ,int ,int *) ;
 scalar_t__ unix_time () ;

__attribute__((used)) static void do_Close(DHT *dht)
{
    unsigned int i;

    for (i = 0; i < dht->num_to_bootstrap; ++i) {
        getnodes(dht, dht->to_bootstrap[i].ip_port, dht->to_bootstrap[i].public_key, dht->self_public_key, ((void*)0));
    }

    dht->num_to_bootstrap = 0;

    uint8_t not_killed = do_ping_and_sendnode_requests(dht, &dht->close_lastgetnodes, dht->self_public_key,
                         dht->close_clientlist, LCLIENT_LIST, &dht->close_bootstrap_times, 0);

    if (!not_killed) {






        uint64_t badonly = unix_time() - BAD_NODE_TIMEOUT;
        size_t i, a;

        for (i = 0; i < LCLIENT_LIST; i++) {
            Client_data *client = &dht->close_clientlist[i];
            IPPTsPng *assoc;

            for (a = 0, assoc = &client->assoc4; a < 2; a++, assoc = &client->assoc6)
                if (assoc->timestamp)
                    assoc->timestamp = badonly;
        }
    }
}
