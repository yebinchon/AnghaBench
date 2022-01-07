
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ minimum; } ;
struct TYPE_8__ {scalar_t__ expiry; TYPE_1__ soa; TYPE_2__* key; int ttl; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_3__ DnsResourceRecord ;


 scalar_t__ CACHE_TTL_MAX_USEC ;
 int CLOCK_REALTIME ;
 scalar_t__ DNS_TYPE_SOA ;
 scalar_t__ LESS_BY (scalar_t__,int ) ;
 scalar_t__ MIN (int ,scalar_t__) ;
 scalar_t__ USEC_INFINITY ;
 scalar_t__ USEC_PER_SEC ;
 int assert (TYPE_3__*) ;
 int now (int ) ;

__attribute__((used)) static usec_t calculate_until(DnsResourceRecord *rr, uint32_t nsec_ttl, usec_t timestamp, bool use_soa_minimum) {
        uint32_t ttl;
        usec_t u;

        assert(rr);

        ttl = MIN(rr->ttl, nsec_ttl);
        if (rr->key->type == DNS_TYPE_SOA && use_soa_minimum) {






                if (ttl > rr->soa.minimum)
                        ttl = rr->soa.minimum;
        }

        u = ttl * USEC_PER_SEC;
        if (u > CACHE_TTL_MAX_USEC)
                u = CACHE_TTL_MAX_USEC;

        if (rr->expiry != USEC_INFINITY) {
                usec_t left;




                left = LESS_BY(rr->expiry, now(CLOCK_REALTIME));
                if (u > left)
                        u = left;
        }

        return timestamp + u;
}
