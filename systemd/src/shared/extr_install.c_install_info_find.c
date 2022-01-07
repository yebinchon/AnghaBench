
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UnitFileInstallInfo ;
struct TYPE_3__ {int will_process; int have_processed; } ;
typedef TYPE_1__ InstallContext ;


 int * ordered_hashmap_get (int ,char const*) ;

__attribute__((used)) static UnitFileInstallInfo *install_info_find(InstallContext *c, const char *name) {
        UnitFileInstallInfo *i;

        i = ordered_hashmap_get(c->have_processed, name);
        if (i)
                return i;

        return ordered_hashmap_get(c->will_process, name);
}
