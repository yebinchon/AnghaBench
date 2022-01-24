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
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const,int) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 scalar_t__ FUNC5 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_memstream*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_memstream*,int /*<<< orphan*/ ,char const*) ; 

char *FUNC10(const char *str)
{
    FUNC0(str != NULL);

    /* If percent sign is consistently followed by two hexadecimal digits,
     * then URL encoding must be assumed.
     * Otherwise, the percent sign itself must be URL-encoded.
     */
    bool encode_percent = false;

    for (const char *p = str; *p != '\0'; p++)
        if (p[0] == '%' && !(FUNC2(p[1]) && FUNC2(p[2])))
        {
            encode_percent = true;
            break;
        }

    struct vlc_memstream stream;
    FUNC6(&stream);

    /* Handle URI scheme */
    const char *p = str;
    bool absolute = false;
    bool encode_brackets = true;

    while (FUNC1(*p) || FUNC3("+-.", *p, 3) != NULL)
        FUNC7(&stream, *(p++));

    if (p > str && *p == ':')
    {   /* There is an URI scheme, assume an absolute URI. */
        FUNC7(&stream, *(p++));
        absolute = true;
        encode_brackets = false;
    }

    /* Handle URI authority */
    if ((absolute || p == str) && FUNC4(p, "//", 2) == 0)
    {
        FUNC8(&stream, p, 2);
        p += 2;
        encode_brackets = true;

        while (FUNC3("/?#", *p, 4) == NULL)
            FUNC9(&stream, *(p++), &"%:[]@"[encode_percent]);
    }

    /* Handle URI path and what follows */
    const char *extras = encode_brackets ? "%/?#@" : "%:/?#[]@";

    while (*p != '\0')
        FUNC9(&stream, *(p++), extras + encode_percent);

    return FUNC5(&stream) ? NULL : stream.ptr;
}