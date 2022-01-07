
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fragment_path; scalar_t__ source_path; } ;
typedef TYPE_1__ Unit ;


 scalar_t__ path_equal (char const*,char*) ;

const char *unit_label_path(Unit *u) {
        const char *p;




        p = u->source_path ?: u->fragment_path;
        if (!p)
                return ((void*)0);


        if (path_equal(p, "/dev/null"))
                return ((void*)0);

        return p;
}
