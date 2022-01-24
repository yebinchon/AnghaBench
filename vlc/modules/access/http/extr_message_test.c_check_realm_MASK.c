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
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (struct vlc_http_msg*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_msg*) ; 
 char* FUNC5 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC6 (int) ; 

__attribute__((used)) static const char *FUNC7(const char *line, const char *realm)
{
    struct vlc_http_msg *m;
    char *value;

    m = FUNC6(401);
    FUNC0(m != NULL);
    FUNC0(FUNC3(m, "WWW-Authenticate", "%s", line) == 0);
    value = FUNC5(m);
    if (realm == NULL)
        FUNC0(value == NULL);
    else
    {
        FUNC0(value != NULL);
        FUNC0(!FUNC2(value, realm));
        FUNC1(value);
    }
    FUNC4(m);
    return realm;
}