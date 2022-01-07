
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ucred_acquired; int ucred; int fd; } ;
typedef TYPE_1__ Varlink ;


 int assert (TYPE_1__*) ;
 int getpeercred (int ,int *) ;

__attribute__((used)) static int varlink_acquire_ucred(Varlink *v) {
        int r;

        assert(v);

        if (v->ucred_acquired)
                return 0;

        r = getpeercred(v->fd, &v->ucred);
        if (r < 0)
                return r;

        v->ucred_acquired = 1;
        return 0;
}
