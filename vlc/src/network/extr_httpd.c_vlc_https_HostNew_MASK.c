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
typedef  int /*<<< orphan*/  vlc_tls_server_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  httpd_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

httpd_host_t *FUNC5(vlc_object_t *obj)
{
    char *cert = FUNC3(obj, "http-cert");
    if (!cert) {
        FUNC2(obj, "HTTP/TLS certificate not specified!");
        return NULL;
    }

    char *key = FUNC3(obj, "http-key");
    vlc_tls_server_t *tls = FUNC4(obj, cert, key);

    if (!tls) {
        FUNC2(obj, "HTTP/TLS certificate error (%s and %s)",
                 cert, key ? key : cert);
        FUNC0(key);
        FUNC0(cert);
        return NULL;
    }
    FUNC0(key);
    FUNC0(cert);

    return FUNC1(obj, "http-host", "https-port", tls);
}