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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char,int) ; 
 int FUNC2 (char const*,char*,unsigned short*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_http_msg*,char*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC10 (unsigned short) ; 

struct vlc_http_msg *FUNC11(const char *msg)
{
    struct vlc_http_msg *m;
    unsigned short code;

    if (FUNC2(msg, "HTTP/1.%*1u %3hu %*s", &code) == 1)
    {
        m = FUNC10(code);
        if (FUNC7(m == NULL))
            return NULL;
    }
    else
        return NULL; /* TODO: request support */

    msg = FUNC6(msg, "\r\n");
    if (msg == NULL)
        goto error;

    while (FUNC3(msg + 2, "\r\n"))
    {
        const char *eol = msg;

        do
        {
            eol = FUNC6(eol + 2, "\r\n");
            if (eol == NULL)
                goto error;
        }   /* Deal with legacy obs-fold (i.e. multi-line header) */
        while (eol[2] == ' ' || eol[2] == '\t');

        msg += 2; /* skip CRLF */

        const char *colon = FUNC1(msg, ':', eol - msg);
        if (colon == NULL || colon == msg)
            goto error;

        char *name = FUNC4(msg, colon - msg);
        if (FUNC7(name == NULL))
            goto error;

        colon++;
        colon += FUNC5(colon, " \t");

        if (FUNC7(FUNC8(m, name, "%.*s",
                                             (int)(eol - colon), colon)))
        {
            FUNC0(name);
            goto error;
        }
        FUNC0(name);
        msg = eol;
    }

    return m;
error:
    FUNC9(m);
    return NULL;
}