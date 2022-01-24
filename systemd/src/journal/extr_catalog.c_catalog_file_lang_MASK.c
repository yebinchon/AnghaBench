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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char,char,char) ; 
 char* FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*,int) ; 

int FUNC3(const char* filename, char **lang) {
        char *beg, *end, *_lang;

        end = FUNC1(filename, ".catalog");
        if (!end)
                return 0;

        beg = end - 1;
        while (beg > filename && !FUNC0(*beg, '.', '/') && end - beg < 32)
                beg--;

        if (*beg != '.' || end <= beg + 1)
                return 0;

        _lang = FUNC2(beg + 1, end - beg - 1);
        if (!_lang)
                return -ENOMEM;

        *lang = _lang;
        return 1;
}