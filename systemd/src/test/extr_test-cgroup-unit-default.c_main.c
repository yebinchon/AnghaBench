
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 int TEST_REQ_RUNNING_SYSTEMD (int) ;
 int test_default_memory_low () ;
 int test_setup_logging (int ) ;

int main(int argc, char* argv[]) {
        int rc = EXIT_SUCCESS;

        test_setup_logging(LOG_DEBUG);

        TEST_REQ_RUNNING_SYSTEMD(rc = test_default_memory_low());

        return rc;
}
