
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ temporary_dir; scalar_t__ generator_late; scalar_t__ generator_early; scalar_t__ generator; } ;
typedef TYPE_1__ LookupPaths ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int assert (TYPE_1__*) ;
 int rm_rf (scalar_t__,int) ;

void lookup_paths_flush_generator(LookupPaths *p) {
        assert(p);



        if (p->generator)
                (void) rm_rf(p->generator, REMOVE_ROOT|REMOVE_PHYSICAL);
        if (p->generator_early)
                (void) rm_rf(p->generator_early, REMOVE_ROOT|REMOVE_PHYSICAL);
        if (p->generator_late)
                (void) rm_rf(p->generator_late, REMOVE_ROOT|REMOVE_PHYSICAL);

        if (p->temporary_dir)
                (void) rm_rf(p->temporary_dir, REMOVE_ROOT|REMOVE_PHYSICAL);
}
