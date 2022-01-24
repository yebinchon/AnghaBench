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

/* Variables and functions */
 int /*<<< orphan*/  ANY_LUKS ; 
 int CRYPT_MAX_SECTOR_SIZE ; 
 int /*<<< orphan*/  CRYPT_PLAIN ; 
 int CRYPT_SECTOR_SIZE ; 
 int /*<<< orphan*/  CRYPT_TCRYPT ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (char const*,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_cipher ; 
 int arg_discards ; 
 int /*<<< orphan*/  arg_hash ; 
 scalar_t__ arg_header ; 
 int arg_key_size ; 
 int /*<<< orphan*/  arg_key_slot ; 
 int /*<<< orphan*/  arg_keyfile_offset ; 
 int arg_keyfile_size ; 
 int /*<<< orphan*/  arg_offset ; 
 int arg_readonly ; 
 int arg_same_cpu_crypt ; 
 int arg_sector_size ; 
 int /*<<< orphan*/  arg_skip ; 
 int arg_submit_from_crypt_cpus ; 
 int arg_tcrypt_hidden ; 
 int /*<<< orphan*/  arg_tcrypt_keyfiles ; 
 int arg_tcrypt_system ; 
 int arg_tcrypt_veracrypt ; 
 int /*<<< orphan*/  arg_timeout ; 
 int arg_tries ; 
 int /*<<< orphan*/  arg_type ; 
 int arg_verify ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,int*) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC17(const char *option) {
        const char *val;
        int r;

        FUNC2(option);

        /* Handled outside of this tool */
        if (FUNC0(option, "noauto", "auto", "nofail", "fail", "_netdev", "keyfile-timeout"))
                return 0;

        if (FUNC13(option, "keyfile-timeout="))
                return 0;

        if ((val = FUNC13(option, "cipher="))) {
                r = FUNC3(&arg_cipher, val);
                if (r < 0)
                        return FUNC6();

        } else if ((val = FUNC13(option, "size="))) {

                r = FUNC11(val, &arg_key_size);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

                if (arg_key_size % 8) {
                        FUNC4("size= not a multiple of 8, ignoring.");
                        return 0;
                }

                arg_key_size /= 8;

        } else if ((val = FUNC13(option, "sector-size="))) {

                r = FUNC11(val, &arg_sector_size);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

                if (arg_sector_size % 2) {
                        FUNC4("sector-size= not a multiple of 2, ignoring.");
                        return 0;
                }

                if (arg_sector_size < CRYPT_SECTOR_SIZE || arg_sector_size > CRYPT_MAX_SECTOR_SIZE) {
                        FUNC4("sector-size= is outside of %u and %u, ignoring.", CRYPT_SECTOR_SIZE, CRYPT_MAX_SECTOR_SIZE);
                        return 0;
                }

        } else if ((val = FUNC13(option, "key-slot="))) {

                arg_type = ANY_LUKS;
                r = FUNC10(val, &arg_key_slot);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

        } else if ((val = FUNC13(option, "tcrypt-keyfile="))) {

                arg_type = CRYPT_TCRYPT;
                if (FUNC9(val)) {
                        if (FUNC16(&arg_tcrypt_keyfiles, val) < 0)
                                return FUNC6();
                } else
                        FUNC4("Key file path \"%s\" is not absolute. Ignoring.", val);

        } else if ((val = FUNC13(option, "keyfile-size="))) {

                r = FUNC11(val, &arg_keyfile_size);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

        } else if ((val = FUNC13(option, "keyfile-offset="))) {

                r = FUNC12(val, &arg_keyfile_offset);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

        } else if ((val = FUNC13(option, "hash="))) {
                r = FUNC3(&arg_hash, val);
                if (r < 0)
                        return FUNC6();

        } else if ((val = FUNC13(option, "header="))) {
                arg_type = ANY_LUKS;

                if (!FUNC9(val))
                        return FUNC5(FUNC1(EINVAL),
                                               "Header path \"%s\" is not absolute, refusing.", val);

                if (arg_header)
                        return FUNC5(FUNC1(EINVAL),
                                               "Duplicate header= option, refusing.");

                arg_header = FUNC14(val);
                if (!arg_header)
                        return FUNC6();

        } else if ((val = FUNC13(option, "tries="))) {

                r = FUNC11(val, &arg_tries);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

        } else if (FUNC0(option, "readonly", "read-only"))
                arg_readonly = true;
        else if (FUNC15(option, "verify"))
                arg_verify = true;
        else if (FUNC0(option, "allow-discards", "discard"))
                arg_discards = true;
        else if (FUNC15(option, "same-cpu-crypt"))
                arg_same_cpu_crypt = true;
        else if (FUNC15(option, "submit-from-crypt-cpus"))
                arg_submit_from_crypt_cpus = true;
        else if (FUNC15(option, "luks"))
                arg_type = ANY_LUKS;
        else if (FUNC15(option, "tcrypt"))
                arg_type = CRYPT_TCRYPT;
        else if (FUNC15(option, "tcrypt-hidden")) {
                arg_type = CRYPT_TCRYPT;
                arg_tcrypt_hidden = true;
        } else if (FUNC15(option, "tcrypt-system")) {
                arg_type = CRYPT_TCRYPT;
                arg_tcrypt_system = true;
        } else if (FUNC15(option, "tcrypt-veracrypt")) {
                arg_type = CRYPT_TCRYPT;
                arg_tcrypt_veracrypt = true;
        } else if (FUNC0(option, "plain", "swap", "tmp"))
                arg_type = CRYPT_PLAIN;
        else if ((val = FUNC13(option, "timeout="))) {

                r = FUNC8(val, &arg_timeout);
                if (r < 0) {
                        FUNC5(r, "Failed to parse %s, ignoring: %m", option);
                        return 0;
                }

        } else if ((val = FUNC13(option, "offset="))) {

                r = FUNC12(val, &arg_offset);
                if (r < 0)
                        return FUNC5(r, "Failed to parse %s: %m", option);

        } else if ((val = FUNC13(option, "skip="))) {

                r = FUNC12(val, &arg_skip);
                if (r < 0)
                        return FUNC5(r, "Failed to parse %s: %m", option);

        } else if (!FUNC15(option, "none"))
                FUNC7("Encountered unknown /etc/crypttab option '%s', ignoring.", option);

        return 0;
}