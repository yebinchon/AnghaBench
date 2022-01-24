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
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (unsigned char*,int) ; 
 int FUNC4 (struct vlc_http_msg*,char*,char*,char*) ; 

int FUNC5(struct vlc_http_msg *m, bool proxy,
                                 const char *username, const char *password)
{
    char *str, *token;
    int ret;
    unsigned char c;

    /* CTL characters and colons not permitted in username */
    for (size_t len = 0; (c = username[len]) != '\0'; len++)
        if (c < 32 || c == 127 || c == ':')
        {
            errno = EINVAL;
            return -1;
        }

    /* CTL characters not permitted in password */
    for (size_t len = 0; (c = password[len]) != '\0'; len++)
        if (c < 32 || c == 127)
        {
            errno = EINVAL;
            return -1;
        }

    ret = FUNC0(&str, "%s:%s", username, password);
    if (FUNC2(ret < 0))
        return -1;

    token = FUNC3((unsigned char *)str, ret);
    FUNC1(str);
    if (FUNC2(token == NULL))
        return -1;

    ret = FUNC4(m, proxy ? "Proxy-Authorization" :
                                  "Authorization", "Basic %s", token);
    FUNC1(token);
    return ret;
}