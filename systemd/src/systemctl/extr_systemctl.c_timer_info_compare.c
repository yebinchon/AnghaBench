
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_info {int id; int next_elapse; scalar_t__ machine; } ;


 int CMP (int ,int ) ;
 int assert (struct timer_info const*) ;
 int strcasecmp (scalar_t__,scalar_t__) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int timer_info_compare(const struct timer_info *a, const struct timer_info *b) {
        int r;

        assert(a);
        assert(b);

        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = strcasecmp(a->machine, b->machine);
                if (r != 0)
                        return r;
        }

        r = CMP(a->next_elapse, b->next_elapse);
        if (r != 0)
                return r;

        return strcmp(a->id, b->id);
}
