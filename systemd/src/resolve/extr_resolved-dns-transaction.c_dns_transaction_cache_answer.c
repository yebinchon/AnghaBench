
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int sender; int family; } ;
struct TYPE_9__ {TYPE_6__* received; int answer_nsec_ttl; int answer_authenticated; int answer; int answer_rcode; int key; TYPE_2__* scope; } ;
struct TYPE_8__ {TYPE_1__* manager; int cache; int protocol; } ;
struct TYPE_7__ {scalar_t__ enable_cache; } ;
typedef TYPE_3__ DnsTransaction ;


 scalar_t__ DNS_CACHE_MODE_NO ;
 int DNS_PACKET_SHALL_CACHE (TYPE_6__*) ;
 int DNS_PROTOCOL_DNS ;
 int DNS_PROTOCOL_LLMNR ;
 int IN_SET (int ,int ,int ) ;
 int assert (TYPE_3__*) ;
 int dns_cache_put (int *,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void dns_transaction_cache_answer(DnsTransaction *t) {
        assert(t);



        if (!IN_SET(t->scope->protocol, DNS_PROTOCOL_DNS, DNS_PROTOCOL_LLMNR))
                return;


        if (t->scope->manager->enable_cache == DNS_CACHE_MODE_NO)
                return;





        if (!DNS_PACKET_SHALL_CACHE(t->received))
                return;

        dns_cache_put(&t->scope->cache,
                      t->scope->manager->enable_cache,
                      t->key,
                      t->answer_rcode,
                      t->answer,
                      t->answer_authenticated,
                      t->answer_nsec_ttl,
                      0,
                      t->received->family,
                      &t->received->sender);
}
