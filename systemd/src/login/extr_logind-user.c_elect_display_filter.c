
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stopping; scalar_t__ started; int class; } ;
typedef TYPE_1__ Session ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int SESSION_GREETER ;
 int SESSION_USER ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool elect_display_filter(Session *s) {

        assert(s);

        return IN_SET(s->class, SESSION_USER, SESSION_GREETER) && s->started && !s->stopping;
}
