
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int generator_late; int generator_early; int generator; } ;
typedef TYPE_1__ LookupPaths ;


 int EINVAL ;
 int assert (TYPE_1__*) ;
 int mkdir_p_label (int ,int) ;

int lookup_paths_mkdir_generator(LookupPaths *p) {
        int r, q;

        assert(p);

        if (!p->generator || !p->generator_early || !p->generator_late)
                return -EINVAL;

        r = mkdir_p_label(p->generator, 0755);

        q = mkdir_p_label(p->generator_early, 0755);
        if (q < 0 && r >= 0)
                r = q;

        q = mkdir_p_label(p->generator_late, 0755);
        if (q < 0 && r >= 0)
                r = q;

        return r;
}
