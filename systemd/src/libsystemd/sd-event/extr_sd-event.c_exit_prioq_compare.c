
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ enabled; int priority; } ;
typedef TYPE_1__ sd_event_source ;


 int CMP (int ,int ) ;
 scalar_t__ SD_EVENT_OFF ;
 scalar_t__ SOURCE_EXIT ;
 int assert (int) ;

__attribute__((used)) static int exit_prioq_compare(const void *a, const void *b) {
        const sd_event_source *x = a, *y = b;

        assert(x->type == SOURCE_EXIT);
        assert(y->type == SOURCE_EXIT);


        if (x->enabled != SD_EVENT_OFF && y->enabled == SD_EVENT_OFF)
                return -1;
        if (x->enabled == SD_EVENT_OFF && y->enabled != SD_EVENT_OFF)
                return 1;


        return CMP(x->priority, y->priority);
}
