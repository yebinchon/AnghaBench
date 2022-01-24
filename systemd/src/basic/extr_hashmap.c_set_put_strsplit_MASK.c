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
typedef  char const Set ;
typedef  int /*<<< orphan*/  ExtractFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const**,char**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*) ; 

int FUNC3(Set *s, const char *v, const char *separators, ExtractFlags flags) {
        const char *p = v;
        int r;

        FUNC0(s);
        FUNC0(v);

        for (;;) {
                char *word;

                r = FUNC1(&p, &word, separators, flags);
                if (r <= 0)
                        return r;

                r = FUNC2(s, word);
                if (r < 0)
                        return r;
        }
}