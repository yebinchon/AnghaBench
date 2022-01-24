#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_6__ {char const* text; } ;
typedef  TYPE_1__ json_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  seaf_dir; } ;
struct TYPE_7__ {void* http_proxy_password; void* http_proxy_username; int /*<<< orphan*/  http_proxy_port; void* http_proxy_addr; void* http_proxy_type; } ;
typedef  TYPE_2__ SeafileSession ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12 (SeafileSession *session)
{
    char *system_proxy_txt = FUNC0 (seaf->seaf_dir, "system-proxy.txt", NULL);
    json_t *json = NULL;
    if (!FUNC1 (system_proxy_txt, G_FILE_TEST_EXISTS)) {
        FUNC9 ("Can't load system proxy: file %s doesn't exist\n", system_proxy_txt);
        goto out;
    }

    json_error_t jerror;
    json = FUNC6(system_proxy_txt, 0, &jerror);
    if (!json) {
        if (FUNC11(jerror.text) > 0)
            FUNC9 ("Failed to load system proxy information: %s.\n", jerror.text);
        else
            FUNC9 ("Failed to load system proxy information\n");
        goto out;
    }
    const char *type;
    type = FUNC8 (json, "type");
    if (!type) {
        FUNC9 ("Failed to load system proxy information: proxy type missing\n");
        goto out;
    }
    if (FUNC10(type, "none") != 0 && FUNC10(type, "socks") != 0 && FUNC10(type, "http") != 0) {
        FUNC9 ("Failed to load system proxy information: invalid proxy type %s\n", type);
        goto out;
    }
    if (FUNC3(type, "none") == 0) {
        goto out;
    }
    session->http_proxy_type = FUNC4(type);
    session->http_proxy_addr = FUNC4(FUNC8 (json, "addr"));
    session->http_proxy_port = FUNC7 (json, "port");
    session->http_proxy_username = FUNC4(FUNC8 (json, "username"));
    session->http_proxy_password = FUNC4(FUNC8 (json, "password"));

out:
    FUNC2 (system_proxy_txt);
    if (json)
        FUNC5(json);
}