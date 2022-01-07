
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_exit_status_NUMA_POLICY () ;
 int test_exit_status_from_string () ;
 int test_exit_status_to_string () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_exit_status_to_string();
        test_exit_status_from_string();
        test_exit_status_NUMA_POLICY();

        return 0;
}
