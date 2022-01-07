
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; scalar_t__ default_instance; } ;
typedef TYPE_1__ UnitFileInstallInfo ;


 int ENOMEM ;
 int UNIT_NAME_TEMPLATE ;
 int assert (TYPE_1__ const*) ;
 char* strdup (int ) ;
 scalar_t__ unit_name_is_valid (int ,int ) ;
 int unit_name_replace_instance (int ,scalar_t__,char**) ;

__attribute__((used)) static int specifier_name(char specifier, const void *data, const void *userdata, char **ret) {
        const UnitFileInstallInfo *i = userdata;
        char *ans;

        assert(i);

        if (unit_name_is_valid(i->name, UNIT_NAME_TEMPLATE) && i->default_instance)
                return unit_name_replace_instance(i->name, i->default_instance, ret);

        ans = strdup(i->name);
        if (!ans)
                return -ENOMEM;
        *ret = ans;
        return 0;
}
