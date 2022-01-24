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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tls_server_load ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_tls_server_t *
FUNC5 (vlc_object_t *obj, const char *cert_path,
                      const char *key_path)
{
    vlc_tls_server_t *srv = FUNC2(obj, sizeof (*srv),
                                              "tls server");
    if (FUNC1(srv == NULL))
        return NULL;

    if (key_path == NULL)
        key_path = cert_path;

    if (FUNC3(srv, "tls server", NULL, false,
                        tls_server_load, srv, cert_path, key_path) == NULL)
    {
        FUNC0 (srv, "TLS server plugin not available");
        FUNC4(srv);
        return NULL;
    }

    return srv;
}