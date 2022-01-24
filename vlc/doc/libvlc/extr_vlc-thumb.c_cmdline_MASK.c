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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 

__attribute__((used)) static void FUNC9(int argc, const char **argv, const char **in,
                    char **out, char **out_with_ext, int *w)
{
    int idx = 1;
    size_t len;

    if (argc != 3 && argc != 5)
        FUNC8(argv[0], argc != 2 || FUNC4(argv[1], "-h"));

    *w = 0;

    if (argc == 5) {
        if (FUNC4(argv[1], "-s"))
            FUNC8(argv[0], 1);

        idx += 2; /* skip "-s width" */
        *w = FUNC1(argv[2]);
    }

    *in  = argv[idx++];
    *out = FUNC6(argv[idx++]);
    if (!*out)
        FUNC0();

    len = FUNC7(*out);
    if (len >= 4 && !FUNC4(*out + len - 4, ".png")) {
        *out_with_ext = *out;
        return;
    }

    /* We need to add .png extension to filename,
     * VLC relies on it to detect output format,
     * and nautilus doesn't give filenames ending in .png */

    *out_with_ext = FUNC2(len + sizeof ".png");
    if (!*out_with_ext)
        FUNC0();
    FUNC5(*out_with_ext, *out);
    FUNC3(*out_with_ext, ".png");
}