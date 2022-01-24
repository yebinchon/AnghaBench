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
 int O_APPEND ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TEXT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/ * FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int,int) ; 

FILE *FUNC3 (const char *filename, const char *mode)
{
    int rwflags = 0, oflags = 0;

    for (const char *ptr = mode; *ptr; ptr++)
    {
        switch (*ptr)
        {
            case 'r':
                rwflags = O_RDONLY;
                break;

            case 'a':
                rwflags = O_WRONLY;
                oflags |= O_CREAT | O_APPEND;
                break;

            case 'w':
                rwflags = O_WRONLY;
                oflags |= O_CREAT | O_TRUNC;
                break;

            case 'x':
                oflags |= O_EXCL;
                break;

            case '+':
                rwflags = O_RDWR;
                break;

#ifdef O_BINARY
            case 'b':
                oflags = (oflags & ~O_TEXT) | O_BINARY;
                break;

            case 't':
                oflags = (oflags & ~O_BINARY) | O_TEXT;
                break;
#endif
        }
    }

    int fd = FUNC2 (filename, rwflags | oflags, 0666);
    if (fd == -1)
        return NULL;

    FILE *stream = FUNC0 (fd, mode);
    if (stream == NULL)
        FUNC1 (fd);

    return stream;
}