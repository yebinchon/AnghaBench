
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_special_glyphs () ;
 int test_get_locales () ;
 int test_keymaps () ;
 int test_locale_is_valid () ;

int main(int argc, char *argv[]) {
        test_get_locales();
        test_locale_is_valid();
        test_keymaps();

        dump_special_glyphs();

        return 0;
}
