
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Path ;


 int * PATH (int *) ;
 int assert (int *) ;
 int path_free_specs (int *) ;

__attribute__((used)) static void path_done(Unit *u) {
        Path *p = PATH(u);

        assert(p);

        path_free_specs(p);
}
