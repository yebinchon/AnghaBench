
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ enabled; TYPE_1__ time; scalar_t__ pending; } ;
typedef TYPE_2__ sd_event_source ;


 int CMP (int ,int ) ;
 int EVENT_SOURCE_IS_TIME (scalar_t__) ;
 scalar_t__ SD_EVENT_OFF ;
 int assert (int) ;

__attribute__((used)) static int earliest_time_prioq_compare(const void *a, const void *b) {
        const sd_event_source *x = a, *y = b;

        assert(EVENT_SOURCE_IS_TIME(x->type));
        assert(x->type == y->type);


        if (x->enabled != SD_EVENT_OFF && y->enabled == SD_EVENT_OFF)
                return -1;
        if (x->enabled == SD_EVENT_OFF && y->enabled != SD_EVENT_OFF)
                return 1;


        if (!x->pending && y->pending)
                return -1;
        if (x->pending && !y->pending)
                return 1;


        return CMP(x->time.next, y->time.next);
}
