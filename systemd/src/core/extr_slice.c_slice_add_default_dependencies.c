
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int default_dependencies; } ;
typedef int Slice ;


 int SPECIAL_SHUTDOWN_TARGET ;
 TYPE_1__* UNIT (int *) ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTS ;
 int UNIT_DEPENDENCY_DEFAULT ;
 int assert (int *) ;
 int unit_add_two_dependencies_by_name (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int slice_add_default_dependencies(Slice *s) {
        int r;

        assert(s);

        if (!UNIT(s)->default_dependencies)
                return 0;


        r = unit_add_two_dependencies_by_name(
                        UNIT(s),
                        UNIT_BEFORE, UNIT_CONFLICTS,
                        SPECIAL_SHUTDOWN_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        return 0;
}
