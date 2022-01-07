
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum action { ____Placeholder_action } action ;
struct TYPE_2__ {int verb; } ;


 int _ACTION_INVALID ;
 int _ACTION_MAX ;
 TYPE_1__* action_table ;
 scalar_t__ streq_ptr (int ,char const*) ;

__attribute__((used)) static enum action verb_to_action(const char *verb) {
        enum action i;

        for (i = 0; i < _ACTION_MAX; i++)
                if (streq_ptr(action_table[i].verb, verb))
                        return i;

        return _ACTION_INVALID;
}
