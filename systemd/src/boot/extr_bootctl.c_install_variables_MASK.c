#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *esp_path,
                             uint32_t part, uint64_t pstart, uint64_t psize,
                             sd_id128_t uuid, const char *path,
                             bool first) {
        const char *p;
        uint16_t slot;
        int r;

        if (!FUNC4()) {
                FUNC7("Not booted with EFI, skipping EFI variable setup.");
                return 0;
        }

        p = FUNC8(esp_path, path);
        if (FUNC0(p, F_OK) < 0) {
                if (errno == ENOENT)
                        return 0;

                return FUNC5(errno, "Cannot access \"%s\": %m", p);
        }

        r = FUNC2(uuid, path, &slot);
        if (r < 0)
                return FUNC5(r,
                                       r == -ENOENT ?
                                       "Failed to access EFI variables. Is the \"efivarfs\" filesystem mounted?" :
                                       "Failed to determine current boot order: %m");

        if (first || r == 0) {
                r = FUNC1(slot, "Linux Boot Manager",
                                        part, pstart, psize,
                                        uuid, path);
                if (r < 0)
                        return FUNC5(r, "Failed to create EFI Boot variable entry: %m");

                FUNC6("Created EFI boot entry \"Linux Boot Manager\".");
        }

        return FUNC3(slot, first);
}