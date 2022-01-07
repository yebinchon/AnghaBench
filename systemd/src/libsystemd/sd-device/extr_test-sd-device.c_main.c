
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_sd_device_enumerator_devices () ;
 int test_sd_device_enumerator_filter_subsystem () ;
 int test_sd_device_enumerator_subsystems () ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_INFO);

        test_sd_device_enumerator_devices();
        test_sd_device_enumerator_subsystems();
        test_sd_device_enumerator_filter_subsystem();

        return 0;
}
