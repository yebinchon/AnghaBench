
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int instance; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__ const*) ;
 int strempty (int ) ;
 int unit_name_unescape (int ,char**) ;

__attribute__((used)) static int specifier_instance_unescaped(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;

        assert(u);

        return unit_name_unescape(strempty(u->instance), ret);
}
