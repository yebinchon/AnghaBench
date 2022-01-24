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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ fbsd_load ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fw_func ; 
 scalar_t__ kexec ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(const char *opt) {
	char *fw, *opt1, *opt2, *opt3, *cp;

	fw = FUNC4(opt);

	if (FUNC6(fw, "kexec", FUNC5("kexec")) == 0) {
		fw_func = kexec;
	} else if (FUNC6(fw, "fbsd", FUNC5("fbsd")) == 0) {
		fw_func = fbsd_load;
	} else {
		goto fail;
	}

		if ((cp = FUNC3(fw, ',')) != NULL) {
			*cp = '\0';
			opt1 = cp + 1;
		} else {
			goto fail;
		}

		if ((cp = FUNC3(opt1, ',')) != NULL) {
			*cp = '\0';
			opt2 = cp + 1;
		} else {
			goto fail;
		}

		if ((cp = FUNC3(opt2, ',')) != NULL) {
			*cp = '\0';
			opt3 = cp + 1;
		} else {
			goto fail;
		}

		opt2 = FUNC5(opt2) ? opt2 : NULL;
		opt3 = FUNC5(opt3) ? opt3 : NULL;

	if (fw_func == kexec) {
		FUNC2(opt1, opt2, opt3);
	} else if (fw_func == fbsd_load) {
		/* FIXME: let user set boot-loader serial device */
		FUNC0(opt1, opt2, opt3, NULL);
	} else {
		goto fail;
	}

	return 0;

fail:
	FUNC1(stderr, "Invalid firmware argument\n"
		"    -f kexec,'kernel','initrd','\"cmdline\"'\n"
		"    -f fbsd,'userboot','boot volume','\"kernel env\"'\n");

	return -1;
}