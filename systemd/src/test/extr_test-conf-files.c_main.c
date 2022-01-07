
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_conf_files_insert (char*) ;
 int test_conf_files_list (int) ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_conf_files_list(0);
        test_conf_files_list(1);
        test_conf_files_insert(((void*)0));
        test_conf_files_insert("/root");
        test_conf_files_insert("/root/");

        return 0;
}
