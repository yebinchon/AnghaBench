#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  hash_t ;
struct TYPE_23__ {TYPE_7__* list; } ;
typedef  TYPE_3__ candidates_bucket ;
typedef  size_t bucket_t ;
struct TYPE_28__ {TYPE_3__* candidates; } ;
struct TYPE_21__ {int /*<<< orphan*/  public_key; } ;
struct TYPE_27__ {int /*<<< orphan*/  heard_family; int /*<<< orphan*/  heard_at; int /*<<< orphan*/  seen_family; int /*<<< orphan*/  seen_at; void* used_at; TYPE_1__ client; int /*<<< orphan*/  hash; } ;
struct TYPE_22__ {int /*<<< orphan*/  family; } ;
struct TYPE_24__ {TYPE_2__ ip; } ;
struct TYPE_26__ {TYPE_4__ ip_port; int /*<<< orphan*/  timestamp; } ;
struct TYPE_25__ {void* ret_timestamp; TYPE_4__ ret_ip_port; int /*<<< orphan*/  timestamp; TYPE_4__ ip_port; } ;
typedef  TYPE_4__ IP_Port ;
typedef  TYPE_5__ IPPTsPng ;
typedef  TYPE_6__ IPPTs ;
typedef  TYPE_7__ Client_entry ;
typedef  TYPE_8__ Assoc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__ const*,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 TYPE_5__* FUNC1 (TYPE_7__*,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 () ; 

__attribute__((used)) static uint8_t FUNC7(const Assoc *assoc, hash_t hash, const uint8_t *id, uint8_t used,
                                     const IPPTs *ippts_send, const IP_Port *ipp_recv)
{
    if (!assoc || !id || !ippts_send)
        return 0;

    bucket_t bucket;
    size_t pos;

    if (!FUNC0(assoc, hash, id, ipp_recv != NULL, used, &bucket, &pos))
        return 0;

    candidates_bucket *cnd_bckt = &assoc->candidates[bucket];
    Client_entry *entry = &cnd_bckt->list[pos];
    FUNC5(entry, 0, sizeof(*entry));
    IPPTsPng *ipptsp = FUNC1(entry, &ippts_send->ip_port);

    if (!ipptsp)
        return 0;

    entry->hash = hash;
    FUNC3(entry->client.public_key, id);

    if (used)
        entry->used_at = FUNC6();

    if (ipp_recv && !FUNC4(ipp_recv))
        ipp_recv = NULL;

    if (ipp_recv) {
        entry->seen_at = ippts_send->timestamp;
        entry->seen_family = ippts_send->ip_port.ip.family;

        ipptsp->ip_port = ippts_send->ip_port;
        ipptsp->timestamp = ippts_send->timestamp;
        ipptsp->ret_ip_port = *ipp_recv;
        ipptsp->ret_timestamp = FUNC6();
    } else {
        IP_Port *heard = FUNC2(entry, &ippts_send->ip_port);

        if (heard) {
            entry->heard_at = ippts_send->timestamp;
            entry->heard_family = ippts_send->ip_port.ip.family;

            *heard = ippts_send->ip_port;
        }
    }

    return 1;
}