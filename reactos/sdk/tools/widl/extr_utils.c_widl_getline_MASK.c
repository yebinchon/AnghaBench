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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 

size_t FUNC4(char **linep, size_t *lenp, FILE *fp)
{
    char *line = *linep;
    size_t len = *lenp;
    size_t n = 0;

    if (!line)
    {
        len = 64;
        line = FUNC2(len);
    }

    while (FUNC0(&line[n], len - n, fp))
    {
        n += FUNC1(&line[n]);
        if (line[n - 1] == '\n')
            break;
        else if (n == len - 1)
        {
            len *= 2;
            line = FUNC3(line, len);
        }
    }

    *linep = line;
    *lenp = len;
    return n;
}