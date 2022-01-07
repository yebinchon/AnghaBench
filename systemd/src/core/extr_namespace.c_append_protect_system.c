
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProtectSystem ;
typedef int MountEntry ;


 int ELEMENTSOF (int ) ;




 int append_static_mounts (int **,int ,int ,int) ;
 int assert (int **) ;
 int assert_not_reached (char*) ;
 int protect_system_full_table ;
 int protect_system_strict_table ;
 int protect_system_yes_table ;

__attribute__((used)) static int append_protect_system(MountEntry **p, ProtectSystem protect_system, bool ignore_protect) {
        assert(p);

        switch (protect_system) {

        case 130:
                return 0;

        case 129:
                return append_static_mounts(p, protect_system_strict_table, ELEMENTSOF(protect_system_strict_table), ignore_protect);

        case 128:
                return append_static_mounts(p, protect_system_yes_table, ELEMENTSOF(protect_system_yes_table), ignore_protect);

        case 131:
                return append_static_mounts(p, protect_system_full_table, ELEMENTSOF(protect_system_full_table), ignore_protect);

        default:
                assert_not_reached("Unexpected ProtectSystem= value");
        }
}
