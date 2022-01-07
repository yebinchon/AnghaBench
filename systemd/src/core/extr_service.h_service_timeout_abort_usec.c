
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int timeout_stop_usec; int timeout_abort_usec; scalar_t__ timeout_abort_set; } ;
typedef TYPE_1__ Service ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static inline usec_t service_timeout_abort_usec(Service *s) {
        assert(s);
        return s->timeout_abort_set ? s->timeout_abort_usec : s->timeout_stop_usec;
}
