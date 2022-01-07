
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* method; int verb; } ;


 size_t ELEMENTSOF (TYPE_1__*) ;
 scalar_t__ streq_ptr (int ,char const*) ;
 TYPE_1__* unit_actions ;

__attribute__((used)) static const char *verb_to_method(const char *verb) {
       size_t i;

       for (i = 0; i < ELEMENTSOF(unit_actions); i++)
                if (streq_ptr(unit_actions[i].verb, verb))
                        return unit_actions[i].method;

       return "StartUnit";
}
