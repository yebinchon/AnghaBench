
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locked_hint; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;

int session_get_locked_hint(Session *s) {
        assert(s);

        return s->locked_hint;
}
