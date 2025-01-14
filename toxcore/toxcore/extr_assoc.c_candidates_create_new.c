
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint8_t ;
typedef int hash_t ;
struct TYPE_23__ {TYPE_7__* list; } ;
typedef TYPE_3__ candidates_bucket ;
typedef size_t bucket_t ;
struct TYPE_28__ {TYPE_3__* candidates; } ;
struct TYPE_21__ {int public_key; } ;
struct TYPE_27__ {int heard_family; int heard_at; int seen_family; int seen_at; void* used_at; TYPE_1__ client; int hash; } ;
struct TYPE_22__ {int family; } ;
struct TYPE_24__ {TYPE_2__ ip; } ;
struct TYPE_26__ {TYPE_4__ ip_port; int timestamp; } ;
struct TYPE_25__ {void* ret_timestamp; TYPE_4__ ret_ip_port; int timestamp; TYPE_4__ ip_port; } ;
typedef TYPE_4__ IP_Port ;
typedef TYPE_5__ IPPTsPng ;
typedef TYPE_6__ IPPTs ;
typedef TYPE_7__ Client_entry ;
typedef TYPE_8__ Assoc ;


 int candidates_create_internal (TYPE_8__ const*,int ,int const*,int ,int,size_t*,size_t*) ;
 TYPE_5__* entry_assoc (TYPE_7__*,TYPE_4__*) ;
 TYPE_4__* entry_heard_get (TYPE_7__*,TYPE_4__*) ;
 int id_copy (int ,int const*) ;
 int ipport_isset (TYPE_4__ const*) ;
 int memset (TYPE_7__*,int ,int) ;
 void* unix_time () ;

__attribute__((used)) static uint8_t candidates_create_new(const Assoc *assoc, hash_t hash, const uint8_t *id, uint8_t used,
                                     const IPPTs *ippts_send, const IP_Port *ipp_recv)
{
    if (!assoc || !id || !ippts_send)
        return 0;

    bucket_t bucket;
    size_t pos;

    if (!candidates_create_internal(assoc, hash, id, ipp_recv != ((void*)0), used, &bucket, &pos))
        return 0;

    candidates_bucket *cnd_bckt = &assoc->candidates[bucket];
    Client_entry *entry = &cnd_bckt->list[pos];
    memset(entry, 0, sizeof(*entry));
    IPPTsPng *ipptsp = entry_assoc(entry, &ippts_send->ip_port);

    if (!ipptsp)
        return 0;

    entry->hash = hash;
    id_copy(entry->client.public_key, id);

    if (used)
        entry->used_at = unix_time();

    if (ipp_recv && !ipport_isset(ipp_recv))
        ipp_recv = ((void*)0);

    if (ipp_recv) {
        entry->seen_at = ippts_send->timestamp;
        entry->seen_family = ippts_send->ip_port.ip.family;

        ipptsp->ip_port = ippts_send->ip_port;
        ipptsp->timestamp = ippts_send->timestamp;
        ipptsp->ret_ip_port = *ipp_recv;
        ipptsp->ret_timestamp = unix_time();
    } else {
        IP_Port *heard = entry_heard_get(entry, &ippts_send->ip_port);

        if (heard) {
            entry->heard_at = ippts_send->timestamp;
            entry->heard_family = ippts_send->ip_port.ip.family;

            *heard = ippts_send->ip_port;
        }
    }

    return 1;
}
