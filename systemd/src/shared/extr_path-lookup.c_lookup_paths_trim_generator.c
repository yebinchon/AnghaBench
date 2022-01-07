
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ generator_late; scalar_t__ generator_early; scalar_t__ generator; } ;
typedef TYPE_1__ LookupPaths ;


 int assert (TYPE_1__*) ;
 int rmdir (scalar_t__) ;

void lookup_paths_trim_generator(LookupPaths *p) {
        assert(p);



        if (p->generator)
                (void) rmdir(p->generator);
        if (p->generator_early)
                (void) rmdir(p->generator_early);
        if (p->generator_late)
                (void) rmdir(p->generator_late);
}
