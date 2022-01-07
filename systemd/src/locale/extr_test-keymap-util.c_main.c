
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_find_converted_keymap () ;
 int test_find_language_fallback () ;
 int test_find_legacy_keymap () ;
 int test_setup_logging (int ) ;
 int test_vconsole_convert_to_x11 () ;
 int test_x11_convert_to_vconsole () ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_find_language_fallback();
        test_find_converted_keymap();
        test_find_legacy_keymap();

        test_vconsole_convert_to_x11();
        test_x11_convert_to_vconsole();

        return 0;
}
