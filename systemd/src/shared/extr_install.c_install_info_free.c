
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* symlink_target; struct TYPE_4__* default_instance; int also; int required_by; int wanted_by; int aliases; struct TYPE_4__* path; struct TYPE_4__* name; } ;
typedef TYPE_1__ UnitFileInstallInfo ;


 int free (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void install_info_free(UnitFileInstallInfo *i) {

        if (!i)
                return;

        free(i->name);
        free(i->path);
        strv_free(i->aliases);
        strv_free(i->wanted_by);
        strv_free(i->required_by);
        strv_free(i->also);
        free(i->default_instance);
        free(i->symlink_target);
        free(i);
}
