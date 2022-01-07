
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileScope ;
typedef int UnitFileFlags ;
typedef int UnitFileChange ;


 int UNIT_FILE_PRESET_FULL ;
 int unit_file_preset (int ,int ,char const*,char**,int ,int **,size_t*) ;

__attribute__((used)) static int unit_file_preset_without_mode(UnitFileScope scope, UnitFileFlags flags, const char *root_dir, char **files, UnitFileChange **changes, size_t *n_changes) {
        return unit_file_preset(scope, flags, root_dir, files, UNIT_FILE_PRESET_FULL, changes, n_changes);
}
