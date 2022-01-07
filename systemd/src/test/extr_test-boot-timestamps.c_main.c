
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 int assert (int) ;
 int log_tests_skipped (char*) ;
 int test_acpi_fpdt () ;
 int test_boot_timestamps () ;
 int test_efi_loader () ;
 int test_setup_logging (int ) ;

int main(int argc, char* argv[]) {
        int p, q, r;

        test_setup_logging(LOG_DEBUG);

        p = test_acpi_fpdt();
        assert(p >= 0);
        q = test_efi_loader();
        assert(q >= 0);
        r = test_boot_timestamps();
        assert(r >= 0);

        if (p == 0 && q == 0 && r == 0)
                return log_tests_skipped("access to firmware variables not possible");

        return EXIT_SUCCESS;
}
