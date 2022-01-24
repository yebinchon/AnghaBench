#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* search_language; char* search_country; char* search_codepage; int match_flags; char* found_codepage; int /*<<< orphan*/  found_lang_id; } ;
typedef  TYPE_1__ locale_search_t ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int LCID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FOUND_CODEPAGE ; 
 int FOUND_COUNTRY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  LOCALE_IDEFAULTANSICODEPAGE ; 
 int /*<<< orphan*/  LOCALE_IDEFAULTCODEPAGE ; 
 scalar_t__ LOCALE_ILANGUAGE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_ELEM_LEN ; 
 scalar_t__ RT_STRING ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 unsigned short FUNC5 (char*) ; 
 int /*<<< orphan*/  find_best_locale_proc ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char const*,char) ; 

LCID FUNC12(const char *locale, unsigned short *codepage)
{
    LCID lcid;
    locale_search_t search;
    const char *cp, *region;

    FUNC8(&search, 0, sizeof(locale_search_t));

    cp = FUNC11(locale, '.');
    region = FUNC11(locale, '_');

    FUNC6(search.search_language, locale, MAX_ELEM_LEN);
    if(region) {
        FUNC6(search.search_country, region+1, MAX_ELEM_LEN);
        if(region-locale < MAX_ELEM_LEN)
            search.search_language[region-locale] = '\0';
    } else
        search.search_country[0] = '\0';

    if(cp) {
        FUNC6(search.search_codepage, cp+1, MAX_ELEM_LEN);
        if(region && cp-region-1<MAX_ELEM_LEN)
          search.search_country[cp-region-1] = '\0';
        if(cp-locale < MAX_ELEM_LEN)
            search.search_language[cp-locale] = '\0';
    } else
        search.search_codepage[0] = '\0';

    if(!search.search_country[0] && !search.search_codepage[0])
        FUNC9(search.search_language);

    FUNC0(FUNC2("KERNEL32"), (LPSTR)RT_STRING,
            (LPCSTR)LOCALE_ILANGUAGE,find_best_locale_proc,
            (LONG_PTR)&search);

    if (!search.match_flags)
        return -1;

    /* If we were given something that didn't match, fail */
    if (search.search_country[0] && !(search.match_flags & FOUND_COUNTRY))
        return -1;

    lcid =  FUNC4(search.found_lang_id, SORT_DEFAULT);

    /* Populate partial locale, translating LCID to locale string elements */
    if (!(search.match_flags & FOUND_CODEPAGE)) {
        /* Even if a codepage is not enumerated for a locale
         * it can be set if valid */
        if (search.search_codepage[0]) {
            if (FUNC3(FUNC5(search.search_codepage)))
                FUNC7(search.found_codepage,search.search_codepage,MAX_ELEM_LEN);
            else {
                /* Special codepage values: OEM & ANSI */
                if (!FUNC10(search.search_codepage,"OCP")) {
                    FUNC1(lcid, LOCALE_IDEFAULTCODEPAGE,
                            search.found_codepage, MAX_ELEM_LEN);
                } else if (!FUNC10(search.search_codepage,"ACP")) {
                    FUNC1(lcid, LOCALE_IDEFAULTANSICODEPAGE,
                            search.found_codepage, MAX_ELEM_LEN);
                } else
                    return -1;

                if (!FUNC5(search.found_codepage))
                    return -1;
            }
        } else {
            /* Prefer ANSI codepages if present */
            FUNC1(lcid, LOCALE_IDEFAULTANSICODEPAGE,
                    search.found_codepage, MAX_ELEM_LEN);
            if (!search.found_codepage[0] || !FUNC5(search.found_codepage))
                FUNC1(lcid, LOCALE_IDEFAULTCODEPAGE,
                        search.found_codepage, MAX_ELEM_LEN);
        }
    }
    if (codepage)
        *codepage = FUNC5(search.found_codepage);

    return lcid;
}