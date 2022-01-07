
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int usec_t ;
typedef int jitter ;
struct TYPE_11__ {scalar_t__ conflict_event_source; TYPE_1__* manager; int key; int conflict_queue; } ;
struct TYPE_10__ {int event; } ;
typedef TYPE_2__ DnsScope ;
typedef TYPE_2__ DnsResourceRecord ;


 int EEXIST ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int LLMNR_JITTER_INTERVAL_USEC ;
 int assert (TYPE_2__*) ;
 int clock_boottime_or_monotonic () ;
 int dns_resource_key_hash_ops ;
 int dns_resource_key_ref (int ) ;
 int dns_resource_record_ref (TYPE_2__*) ;
 int log_debug_errno (int,char*) ;
 int log_oom () ;
 scalar_t__ now (int ) ;
 int on_conflict_dispatch ;
 int ordered_hashmap_ensure_allocated (int *,int *) ;
 int ordered_hashmap_put (int ,int ,TYPE_2__*) ;
 int random_bytes (int *,int) ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_2__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;

int dns_scope_notify_conflict(DnsScope *scope, DnsResourceRecord *rr) {
        usec_t jitter;
        int r;

        assert(scope);
        assert(rr);



        r = ordered_hashmap_ensure_allocated(&scope->conflict_queue, &dns_resource_key_hash_ops);
        if (r < 0) {
                log_oom();
                return r;
        }




        r = ordered_hashmap_put(scope->conflict_queue, rr->key, rr);
        if (IN_SET(r, 0, -EEXIST))
                return 0;
        if (r < 0)
                return log_debug_errno(r, "Failed to queue conflicting RR: %m");

        dns_resource_key_ref(rr->key);
        dns_resource_record_ref(rr);

        if (scope->conflict_event_source)
                return 0;

        random_bytes(&jitter, sizeof(jitter));
        jitter %= LLMNR_JITTER_INTERVAL_USEC;

        r = sd_event_add_time(scope->manager->event,
                              &scope->conflict_event_source,
                              clock_boottime_or_monotonic(),
                              now(clock_boottime_or_monotonic()) + jitter,
                              LLMNR_JITTER_INTERVAL_USEC,
                              on_conflict_dispatch, scope);
        if (r < 0)
                return log_debug_errno(r, "Failed to add conflict dispatch event: %m");

        (void) sd_event_source_set_description(scope->conflict_event_source, "scope-conflict");

        return 0;
}
