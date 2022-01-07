
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int default_entry; int entry_default; int entry_oneshot; int n_entries; int entries; } ;
typedef TYPE_1__ BootConfig ;


 int EFI_VENDOR_LOADER ;
 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int IN_SET (int,int ,int ) ;
 int assert (TYPE_1__*) ;
 int boot_entries_find (char const*,char const*,int *,int *) ;
 int boot_entries_find_unified (char const*,char const*,int *,int *) ;
 int boot_entries_select_default (TYPE_1__*) ;
 int boot_entries_uniquify (int ,int ) ;
 int boot_entry_compare ;
 int boot_loader_read_conf (char const*,TYPE_1__*) ;
 int efi_get_variable_string (int ,char*,int *) ;
 scalar_t__ is_efi_boot () ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 char* strjoina (char const*,char*) ;
 int typesafe_qsort (int ,int ,int ) ;

int boot_entries_load_config(
                const char *esp_path,
                const char *xbootldr_path,
                BootConfig *config) {

        const char *p;
        int r;

        assert(config);

        if (esp_path) {
                p = strjoina(esp_path, "/loader/loader.conf");
                r = boot_loader_read_conf(p, config);
                if (r < 0)
                        return r;

                p = strjoina(esp_path, "/loader/entries");
                r = boot_entries_find(esp_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;

                p = strjoina(esp_path, "/EFI/Linux/");
                r = boot_entries_find_unified(esp_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;
        }

        if (xbootldr_path) {
                p = strjoina(xbootldr_path, "/loader/entries");
                r = boot_entries_find(xbootldr_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;

                p = strjoina(xbootldr_path, "/EFI/Linux/");
                r = boot_entries_find_unified(xbootldr_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;
        }

        typesafe_qsort(config->entries, config->n_entries, boot_entry_compare);

        r = boot_entries_uniquify(config->entries, config->n_entries);
        if (r < 0)
                return log_error_errno(r, "Failed to uniquify boot entries: %m");

        if (is_efi_boot()) {
                r = efi_get_variable_string(EFI_VENDOR_LOADER, "LoaderEntryOneShot", &config->entry_oneshot);
                if (r < 0 && !IN_SET(r, -ENOENT, -ENODATA)) {
                        log_warning_errno(r, "Failed to read EFI variable \"LoaderEntryOneShot\": %m");
                        if (r == -ENOMEM)
                                return r;
                }

                r = efi_get_variable_string(EFI_VENDOR_LOADER, "LoaderEntryDefault", &config->entry_default);
                if (r < 0 && !IN_SET(r, -ENOENT, -ENODATA)) {
                        log_warning_errno(r, "Failed to read EFI variable \"LoaderEntryDefault\": %m");
                        if (r == -ENOMEM)
                                return r;
                }
        }

        config->default_entry = boot_entries_select_default(config);
        return 0;
}
