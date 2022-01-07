
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ instance; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__ const*) ;
 int unit_name_path_unescape (scalar_t__,char**) ;
 int unit_name_to_path (int ,char**) ;

__attribute__((used)) static int specifier_filename(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;

        assert(u);

        if (u->instance)
                return unit_name_path_unescape(u->instance, ret);
        else
                return unit_name_to_path(u->id, ret);
}
