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
 int /*<<< orphan*/  CERT_FILE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PRIV_KEY_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUST_FILE ; 
 scalar_t__ arg_cert ; 
 scalar_t__ arg_key ; 
 scalar_t__ arg_listen_http ; 
 scalar_t__ arg_listen_raw ; 
 scalar_t__ arg_trust ; 
 scalar_t__ arg_trust_all ; 
 int FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(char **key, char **cert, char **trust) {
        int r;

        r = FUNC3(arg_key ?: PRIV_KEY_FILE, key, NULL);
        if (r < 0)
                return FUNC1(r, "Failed to read key from file '%s': %m",
                                       arg_key ?: PRIV_KEY_FILE);

        r = FUNC3(arg_cert ?: CERT_FILE, cert, NULL);
        if (r < 0)
                return FUNC1(r, "Failed to read certificate from file '%s': %m",
                                       arg_cert ?: CERT_FILE);

        if (arg_trust_all)
                FUNC2("Certificate checking disabled.");
        else {
                r = FUNC3(arg_trust ?: TRUST_FILE, trust, NULL);
                if (r < 0)
                        return FUNC1(r, "Failed to read CA certificate file '%s': %m",
                                               arg_trust ?: TRUST_FILE);
        }

        if ((arg_listen_raw || arg_listen_http) && *trust)
                return FUNC1(FUNC0(EINVAL),
                                       "Option --trust makes all non-HTTPS connections untrusted.");

        return 0;
}