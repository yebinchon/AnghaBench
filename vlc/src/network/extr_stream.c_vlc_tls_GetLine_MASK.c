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
typedef  int /*<<< orphan*/  vlc_tls_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 

char *FUNC4(vlc_tls_t *session)
{
    char *line = NULL;
    size_t linelen = 0, linesize = 0;

    do
    {
        if (linelen == linesize)
        {
            linesize += 1024;

            char *newline = FUNC1(line, linesize);
            if (FUNC2(newline == NULL))
                goto error;
            line = newline;
        }

        if (FUNC3(session, line + linelen, 1, false) <= 0)
            goto error;
    }
    while (line[linelen++] != '\n');

    if (linelen >= 2 && line[linelen - 2] == '\r')
        line[linelen - 2] = '\0';
    return line;

error:
    FUNC0(line);
    return NULL;
}