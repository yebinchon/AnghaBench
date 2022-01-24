#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* psz_iso639_2T; } ;
typedef  TYPE_1__ iso639_lang_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(const char *lang)
{
    const iso639_lang_t *pl;

    if (FUNC3(lang) == 2)
    {
        pl = FUNC0(lang);
    }
    else
    {
        pl = FUNC1(lang);      /* try native code first */
        if (!*pl->psz_iso639_2T)
            pl = FUNC2(lang);  /* else fallback to english code */

    }

    return pl->psz_iso639_2T;   /* returns the english code */
}