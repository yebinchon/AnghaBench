
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* fstype; void* options; void* what; } ;
typedef TYPE_1__ MountParameters ;


 int assert (TYPE_1__*) ;
 void* mfree (void*) ;

__attribute__((used)) static void mount_parameters_done(MountParameters *p) {
        assert(p);

        p->what = mfree(p->what);
        p->options = mfree(p->options);
        p->fstype = mfree(p->fstype);
}
