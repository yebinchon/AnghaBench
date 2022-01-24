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
struct vlc_http_resource {char* password; char* username; int /*<<< orphan*/ * response; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct vlc_http_resource *res,
                           const char *username, const char *password)
{
    char *user = NULL;
    char *pass = NULL;

    if (username != NULL)
    {
        user = FUNC1(username);
        if (FUNC2(user == NULL))
            return -1;

        pass = FUNC1((password != NULL) ? password : "");
        if (FUNC2(pass == NULL))
        {
            FUNC0(user);
            return -1;
        }
    }

    FUNC0(res->password);
    FUNC0(res->username);
    res->username = user;
    res->password = pass;

    if (res->response != NULL && FUNC4(res->response) == 401)
    {
        FUNC3(res->response);
        res->response = NULL;
    }

    return 0;
}