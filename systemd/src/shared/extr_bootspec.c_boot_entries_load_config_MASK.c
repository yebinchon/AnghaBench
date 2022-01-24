#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  default_entry; int /*<<< orphan*/  entry_default; int /*<<< orphan*/  entry_oneshot; int /*<<< orphan*/  n_entries; int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ BootConfig ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_VENDOR_LOADER ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boot_entry_compare ; 
 int FUNC6 (char const*,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 char* FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(
                const char *esp_path,
                const char *xbootldr_path,
                BootConfig *config) {

        const char *p;
        int r;

        FUNC1(config);

        if (esp_path) {
                p = FUNC11(esp_path, "/loader/loader.conf");
                r = FUNC6(p, config);
                if (r < 0)
                        return r;

                p = FUNC11(esp_path, "/loader/entries");
                r = FUNC2(esp_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;

                p = FUNC11(esp_path, "/EFI/Linux/");
                r = FUNC3(esp_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;
        }

        if (xbootldr_path) {
                p = FUNC11(xbootldr_path, "/loader/entries");
                r = FUNC2(xbootldr_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;

                p = FUNC11(xbootldr_path, "/EFI/Linux/");
                r = FUNC3(xbootldr_path, p, &config->entries, &config->n_entries);
                if (r < 0)
                        return r;
        }

        FUNC12(config->entries, config->n_entries, boot_entry_compare);

        r = FUNC5(config->entries, config->n_entries);
        if (r < 0)
                return FUNC9(r, "Failed to uniquify boot entries: %m");

        if (FUNC8()) {
                r = FUNC7(EFI_VENDOR_LOADER, "LoaderEntryOneShot", &config->entry_oneshot);
                if (r < 0 && !FUNC0(r, -ENOENT, -ENODATA)) {
                        FUNC10(r, "Failed to read EFI variable \"LoaderEntryOneShot\": %m");
                        if (r == -ENOMEM)
                                return r;
                }

                r = FUNC7(EFI_VENDOR_LOADER, "LoaderEntryDefault", &config->entry_default);
                if (r < 0 && !FUNC0(r, -ENOENT, -ENODATA)) {
                        FUNC10(r, "Failed to read EFI variable \"LoaderEntryDefault\": %m");
                        if (r == -ENOMEM)
                                return r;
                }
        }

        config->default_entry = FUNC4(config);
        return 0;
}