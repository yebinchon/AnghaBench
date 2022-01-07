
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* state_file; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int unlink (TYPE_1__*) ;

void link_remove_user(Link *l) {
        assert(l);
        assert(l->state_file);

        (void) unlink(l->state_file);
}
