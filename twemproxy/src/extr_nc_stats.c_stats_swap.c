
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elem; } ;
struct TYPE_5__ {int elem; } ;
struct stats {int aggregate; scalar_t__ updated; TYPE_1__ current; TYPE_3__ shadow; } ;


 int LOG_PVERB ;
 int array_swap (TYPE_1__*,TYPE_3__*) ;
 int log_debug (int ,char*,int ,int ) ;
 int stats_enabled ;
 int stats_pool_reset (TYPE_1__*) ;

void
stats_swap(struct stats *st)
{
    if (!stats_enabled) {
        return;
    }

    if (st->aggregate == 1) {
        log_debug(LOG_PVERB, "skip swap of current %p shadow %p as aggregator "
                  "is busy", st->current.elem, st->shadow.elem);
        return;
    }

    if (st->updated == 0) {
        log_debug(LOG_PVERB, "skip swap of current %p shadow %p as there is "
                  "nothing new", st->current.elem, st->shadow.elem);
        return;
    }

    log_debug(LOG_PVERB, "swap stats current %p shadow %p", st->current.elem,
              st->shadow.elem);

    array_swap(&st->current, &st->shadow);





    stats_pool_reset(&st->current);
    st->updated = 0;

    st->aggregate = 1;
}
