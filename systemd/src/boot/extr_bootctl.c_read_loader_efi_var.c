
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFI_VENDOR_LOADER ;
 int ENOENT ;
 int efi_get_variable_string (int ,char const*,char**) ;
 int log_warning_errno (int,char*,char const*) ;

__attribute__((used)) static void read_loader_efi_var(const char *name, char **var) {
        int r;

        r = efi_get_variable_string(EFI_VENDOR_LOADER, name, var);
        if (r < 0 && r != -ENOENT)
                log_warning_errno(r, "Failed to read EFI variable %s: %m", name);
}
