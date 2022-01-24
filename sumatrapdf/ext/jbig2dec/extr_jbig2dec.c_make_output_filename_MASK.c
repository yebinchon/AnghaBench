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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static char *
FUNC6(const char *input_filename, const char *extension)
{
    char *output_filename;
    const char *c, *e;
    int len;

    if (extension == NULL) {
        FUNC1(stderr, "no filename extension; cannot create output filename!\n");
        FUNC0(1);
    }

    if (input_filename == NULL)
        c = "out";
    else {
        /* strip any leading path */
        c = FUNC5(input_filename, '/');       /* *nix */
        if (c == NULL)
            c = FUNC5(input_filename, '\\');  /* win32/dos */
        if (c != NULL)
            c++;                /* skip the path separator */
        else
            c = input_filename; /* no leading path */
    }

    /* make sure we haven't just stripped the last character */
    if (*c == '\0')
        c = "out";

    /* strip the extension */
    len = FUNC3(c);
    e = FUNC5(c, '.');
    if (e != NULL)
        len -= FUNC3(e);

    /* allocate enough space for the base + ext */
    output_filename = (char *)FUNC2(len + FUNC3(extension) + 1);
    if (output_filename == NULL) {
        FUNC1(stderr, "failed to allocate memory for output filename\n");
        FUNC0(1);
    }

    FUNC4(output_filename, c, len);
    FUNC4(output_filename + len, extension, FUNC3(extension));
    *(output_filename + len + FUNC3(extension)) = '\0';

    /* return the new string */
    return (output_filename);
}