
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {scalar_t__ n_groups; scalar_t__ lru_tail; } ;
typedef TYPE_1__ JournalRateLimit ;


 scalar_t__ GROUPS_MAX ;
 int assert (TYPE_1__*) ;
 scalar_t__ journal_ratelimit_group_expired (scalar_t__,int ) ;
 int journal_ratelimit_group_free (scalar_t__) ;

__attribute__((used)) static void journal_ratelimit_vacuum(JournalRateLimit *r, usec_t ts) {
        assert(r);




        while (r->n_groups >= GROUPS_MAX ||
               (r->lru_tail && journal_ratelimit_group_expired(r->lru_tail, ts)))
                journal_ratelimit_group_free(r->lru_tail);
}
