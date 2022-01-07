
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProtectHome ;
typedef int MountEntry ;


 int ELEMENTSOF (int ) ;




 int append_static_mounts (int **,int ,int ,int) ;
 int assert (int **) ;
 int assert_not_reached (char*) ;
 int protect_home_read_only_table ;
 int protect_home_tmpfs_table ;
 int protect_home_yes_table ;

__attribute__((used)) static int append_protect_home(MountEntry **p, ProtectHome protect_home, bool ignore_protect) {
        assert(p);

        switch (protect_home) {

        case 131:
                return 0;

        case 130:
                return append_static_mounts(p, protect_home_read_only_table, ELEMENTSOF(protect_home_read_only_table), ignore_protect);

        case 129:
                return append_static_mounts(p, protect_home_tmpfs_table, ELEMENTSOF(protect_home_tmpfs_table), ignore_protect);

        case 128:
                return append_static_mounts(p, protect_home_yes_table, ELEMENTSOF(protect_home_yes_table), ignore_protect);

        default:
                assert_not_reached("Unexpected ProtectHome= value");
        }
}
