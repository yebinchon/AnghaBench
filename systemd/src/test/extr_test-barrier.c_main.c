
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EPERM ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int LOG_INFO ;
 int VIRTUALIZATION_NONE ;
 int detect_virtualization () ;
 int log_tests_skipped (char*) ;
 int slow_tests_enabled () ;
 int test_barrier_exit () ;
 int test_barrier_no_exit () ;
 int test_barrier_pending_exit () ;
 int test_barrier_sync () ;
 int test_barrier_sync_next () ;
 int test_barrier_sync_next_local () ;
 int test_barrier_sync_next_local_abort () ;
 int test_barrier_wait_abortion () ;
 int test_barrier_wait_abortion_local () ;
 int test_barrier_wait_abortion_local_unmatched () ;
 int test_barrier_wait_abortion_unmatched () ;
 int test_barrier_wait_next () ;
 int test_barrier_wait_next_twice () ;
 int test_barrier_wait_next_twice_local () ;
 int test_barrier_wait_next_twice_local_sync () ;
 int test_barrier_wait_next_twice_sync () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        int v;
        test_setup_logging(LOG_INFO);

        if (!slow_tests_enabled())
                return log_tests_skipped("slow tests are disabled");
        v = detect_virtualization();
        if (IN_SET(v, -EPERM, -EACCES))
                return log_tests_skipped("Cannot detect virtualization");

        if (v != VIRTUALIZATION_NONE)
                return log_tests_skipped("This test requires a baremetal machine");

        test_barrier_sync();
        test_barrier_wait_next();
        test_barrier_wait_next_twice();
        test_barrier_wait_next_twice_sync();
        test_barrier_wait_next_twice_local();
        test_barrier_wait_next_twice_local_sync();
        test_barrier_sync_next();
        test_barrier_sync_next_local();
        test_barrier_sync_next_local_abort();
        test_barrier_wait_abortion();
        test_barrier_wait_abortion_unmatched();
        test_barrier_wait_abortion_local();
        test_barrier_wait_abortion_local_unmatched();
        test_barrier_exit();
        test_barrier_no_exit();
        test_barrier_pending_exit();

        return 0;
}
