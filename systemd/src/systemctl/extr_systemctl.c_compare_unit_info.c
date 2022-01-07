
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* machine; char const* id; } ;
typedef TYPE_1__ UnitInfo ;


 int strcasecmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int compare_unit_info(const UnitInfo *a, const UnitInfo *b) {
        const char *d1, *d2;
        int r;


        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = strcasecmp(a->machine, b->machine);
                if (r != 0)
                        return r;
        }


        d1 = strrchr(a->id, '.');
        d2 = strrchr(b->id, '.');
        if (d1 && d2) {
                r = strcasecmp(d1, d2);
                if (r != 0)
                        return r;
        }


        return strcasecmp(a->id, b->id);
}
