
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 char* prefix_roota (char const*,char*) ;
 int remove_boot_efi (char const*) ;
 int rm_rf (char const*,int) ;

__attribute__((used)) static int remove_binaries(const char *esp_path) {
        const char *p;
        int r, q;

        p = prefix_roota(esp_path, "/EFI/systemd");
        r = rm_rf(p, REMOVE_ROOT|REMOVE_PHYSICAL);

        q = remove_boot_efi(esp_path);
        if (q < 0 && r == 0)
                r = q;

        return r;
}
