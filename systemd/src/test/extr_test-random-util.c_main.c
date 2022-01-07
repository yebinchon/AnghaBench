
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int RANDOM_ALLOW_RDRAND ;
 int RANDOM_BLOCK ;
 int RANDOM_EXTEND_WITH_PSEUDO ;
 int test_genuine_random_bytes (int ) ;
 int test_pseudo_random_bytes () ;
 int test_rdrand () ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_genuine_random_bytes(RANDOM_EXTEND_WITH_PSEUDO);
        test_genuine_random_bytes(0);
        test_genuine_random_bytes(RANDOM_BLOCK);
        test_genuine_random_bytes(RANDOM_ALLOW_RDRAND);

        test_pseudo_random_bytes();

        test_rdrand();

        return 0;
}
