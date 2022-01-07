
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int default_instance; int name; } ;
typedef TYPE_1__ UnitFileInstallInfo ;


 int assert (TYPE_1__ const*) ;
 int free_and_strdup (char**,int ) ;
 scalar_t__ isempty (char*) ;
 int strempty (int ) ;
 int unit_name_to_instance (int ,char**) ;

__attribute__((used)) static int specifier_instance(char specifier, const void *data, const void *userdata, char **ret) {
        const UnitFileInstallInfo *i = userdata;
        char *instance;
        int r;

        assert(i);

        r = unit_name_to_instance(i->name, &instance);
        if (r < 0)
                return r;

        if (isempty(instance)) {
                r = free_and_strdup(&instance, strempty(i->default_instance));
                if (r < 0)
                        return r;
        }

        *ret = instance;
        return 0;
}
