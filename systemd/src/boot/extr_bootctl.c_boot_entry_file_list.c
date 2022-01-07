
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ansi_highlight_red () ;
 int ansi_normal () ;
 int boot_entry_file_check (char const*,char const*) ;
 int errno ;
 int printf (char*,char const*,...) ;
 char* strempty (char const*) ;

__attribute__((used)) static void boot_entry_file_list(const char *field, const char *root, const char *p, int *ret_status) {
        int status = boot_entry_file_check(root, p);

        printf("%13s%s ", strempty(field), field ? ":" : " ");
        if (status < 0) {
                errno = -status;
                printf("%s%s%s (%m)\n", ansi_highlight_red(), p, ansi_normal());
        } else
                printf("%s\n", p);

        if (*ret_status == 0 && status < 0)
                *ret_status = status;
}
