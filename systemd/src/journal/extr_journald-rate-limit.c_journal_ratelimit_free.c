
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lru; } ;
typedef TYPE_1__ JournalRateLimit ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int journal_ratelimit_group_free (scalar_t__) ;

void journal_ratelimit_free(JournalRateLimit *r) {
        assert(r);

        while (r->lru)
                journal_ratelimit_group_free(r->lru);

        free(r);
}
