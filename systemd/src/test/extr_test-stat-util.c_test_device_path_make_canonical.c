
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_device_node (char*) ;
 int test_device_path_make_canonical_one (char*) ;

__attribute__((used)) static void test_device_path_make_canonical(void) {

        test_device_path_make_canonical_one("/dev/null");
        test_device_path_make_canonical_one("/dev/zero");
        test_device_path_make_canonical_one("/dev/full");
        test_device_path_make_canonical_one("/dev/random");
        test_device_path_make_canonical_one("/dev/urandom");
        test_device_path_make_canonical_one("/dev/tty");

        if (is_device_node("/run/systemd/inaccessible/chr") > 0) {
                test_device_path_make_canonical_one("/run/systemd/inaccessible/chr");
                test_device_path_make_canonical_one("/run/systemd/inaccessible/blk");
        }
}
