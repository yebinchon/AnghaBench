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
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int ENOKEY ; 
 int /*<<< orphan*/  arg_esp_path ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*) ; 

__attribute__((used)) static int FUNC4(
                bool unprivileged_mode,
                uint32_t *ret_part,
                uint64_t *ret_pstart,
                uint64_t *ret_psize,
                sd_id128_t *ret_uuid) {

        char *np;
        int r;

        /* Find the ESP, and log about errors. Note that find_esp_and_warn() will log in all error cases on
         * its own, except for ENOKEY (which is good, we want to show our own message in that case,
         * suggesting use of --esp-path=) and EACCESS (only when we request unprivileged mode; in this case
         * we simply eat up the error here, so that --list and --status work too, without noise about
         * this). */

        r = FUNC0(arg_esp_path, unprivileged_mode, &np, ret_part, ret_pstart, ret_psize, ret_uuid);
        if (r == -ENOKEY)
                return FUNC3(r,
                                       "Couldn't find EFI system partition. It is recommended to mount it to /boot or /efi.\n"
                                       "Alternatively, use --esp-path= to specify path to mount point.");
        if (r < 0)
                return r;

        FUNC1(arg_esp_path, np);
        FUNC2("Using EFI System Partition at %s.", arg_esp_path);

        return 1;
}