
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__ const*) ;
 int unit_name_to_prefix_and_instance (int ,char**) ;

__attribute__((used)) static int specifier_prefix_and_instance(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;

        assert(u);

        return unit_name_to_prefix_and_instance(u->id, ret);
}
