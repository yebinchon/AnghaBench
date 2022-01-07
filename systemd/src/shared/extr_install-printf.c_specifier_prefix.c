
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ UnitFileInstallInfo ;


 int assert (TYPE_1__ const*) ;
 int unit_name_to_prefix (int ,char**) ;

__attribute__((used)) static int specifier_prefix(char specifier, const void *data, const void *userdata, char **ret) {
        const UnitFileInstallInfo *i = userdata;

        assert(i);

        return unit_name_to_prefix(i->name, ret);
}
