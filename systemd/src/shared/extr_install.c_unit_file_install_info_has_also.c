
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int also; } ;
typedef TYPE_1__ UnitFileInstallInfo ;


 int assert (TYPE_1__ const*) ;
 int strv_isempty (int ) ;

__attribute__((used)) static bool unit_file_install_info_has_also(const UnitFileInstallInfo *i) {
        assert(i);

        return !strv_isempty(i->also);
}
