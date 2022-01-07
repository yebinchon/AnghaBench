
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * specs; } ;
typedef int PathSpec ;
typedef TYPE_1__ Path ;


 int LIST_REMOVE (int ,int *,int *) ;
 int assert (TYPE_1__*) ;
 int free (int *) ;
 int path_spec_done (int *) ;
 int path_spec_unwatch (int *) ;
 int spec ;

void path_free_specs(Path *p) {
        PathSpec *s;

        assert(p);

        while ((s = p->specs)) {
                path_spec_unwatch(s);
                LIST_REMOVE(spec, p->specs, s);
                path_spec_done(s);
                free(s);
        }
}
