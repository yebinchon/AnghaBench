
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int strv_skip (char**,int) ;
 int test_runlevel_to_target () ;
 int test_setup_logging (int ) ;
 int test_unit_file_build_name_map (int ) ;
 int test_unit_validate_alias_symlink_and_warn () ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_unit_validate_alias_symlink_and_warn();
        test_unit_file_build_name_map(strv_skip(argv, 1));
        test_runlevel_to_target();

        return 0;
}
