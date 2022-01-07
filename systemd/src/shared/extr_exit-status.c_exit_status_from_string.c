
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int name; } ;


 size_t ELEMENTSOF (TYPE_1__*) ;
 TYPE_1__* exit_status_mappings ;
 int safe_atou8 (char const*,int*) ;
 scalar_t__ streq_ptr (char const*,int ) ;

int exit_status_from_string(const char *s) {
        uint8_t val;
        int r;

        for (size_t i = 0; i < ELEMENTSOF(exit_status_mappings); i++)
                if (streq_ptr(s, exit_status_mappings[i].name))
                        return i;

        r = safe_atou8(s, &val);
        if (r < 0)
                return r;

        return val;
}
