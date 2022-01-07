
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int default_timeout_stop_usec; int default_timeout_abort_usec; scalar_t__ default_timeout_abort_set; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static inline usec_t manager_default_timeout_abort_usec(Manager *m) {
        assert(m);
        return m->default_timeout_abort_set ? m->default_timeout_abort_usec : m->default_timeout_stop_usec;
}
