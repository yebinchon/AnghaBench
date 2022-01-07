
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ JsonSource ;


 int streq (int ,int ) ;

__attribute__((used)) static bool json_source_equal(JsonSource *a, JsonSource *b) {
        if (a == b)
                return 1;

        if (!a || !b)
                return 0;

        return streq(a->name, b->name);
}
