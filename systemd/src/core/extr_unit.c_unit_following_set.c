
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * Unit ;
struct TYPE_2__ {int (* following_set ) (int **,int **) ;} ;
typedef int Set ;


 TYPE_1__* UNIT_VTABLE (int **) ;
 int assert (int **) ;
 int stub1 (int **,int **) ;

int unit_following_set(Unit *u, Set **s) {
        assert(u);
        assert(s);

        if (UNIT_VTABLE(u)->following_set)
                return UNIT_VTABLE(u)->following_set(u, s);

        *s = ((void*)0);
        return 0;
}
