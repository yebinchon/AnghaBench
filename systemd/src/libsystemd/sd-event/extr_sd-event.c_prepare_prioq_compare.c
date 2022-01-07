
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; int priority; int prepare_iteration; int prepare; } ;
typedef TYPE_1__ sd_event_source ;


 int CMP (int ,int ) ;
 scalar_t__ SD_EVENT_OFF ;
 int assert (int ) ;

__attribute__((used)) static int prepare_prioq_compare(const void *a, const void *b) {
        const sd_event_source *x = a, *y = b;
        int r;

        assert(x->prepare);
        assert(y->prepare);


        if (x->enabled != SD_EVENT_OFF && y->enabled == SD_EVENT_OFF)
                return -1;
        if (x->enabled == SD_EVENT_OFF && y->enabled != SD_EVENT_OFF)
                return 1;




        r = CMP(x->prepare_iteration, y->prepare_iteration);
        if (r != 0)
                return r;


        return CMP(x->priority, y->priority);
}
