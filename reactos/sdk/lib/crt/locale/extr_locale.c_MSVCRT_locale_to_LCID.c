
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* search_language; char* search_country; char* search_codepage; int match_flags; char* found_codepage; int found_lang_id; } ;
typedef TYPE_1__ locale_search_t ;
typedef int LPSTR ;
typedef int LPCSTR ;
typedef int LONG_PTR ;
typedef int LCID ;


 int EnumResourceLanguagesA (int ,int ,int ,int ,int ) ;
 int FOUND_CODEPAGE ;
 int FOUND_COUNTRY ;
 int GetLocaleInfoA (int,int ,char*,int) ;
 int GetModuleHandleA (char*) ;
 scalar_t__ IsValidCodePage (unsigned short) ;
 int LOCALE_IDEFAULTANSICODEPAGE ;
 int LOCALE_IDEFAULTCODEPAGE ;
 scalar_t__ LOCALE_ILANGUAGE ;
 int MAKELCID (int ,int ) ;
 int MAX_ELEM_LEN ;
 scalar_t__ RT_STRING ;
 int SORT_DEFAULT ;
 unsigned short atoi (char*) ;
 int find_best_locale_proc ;
 int lstrcpynA (char*,char const*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int remap_synonym (char*) ;
 int strcasecmp (char*,char*) ;
 char* strchr (char const*,char) ;

LCID MSVCRT_locale_to_LCID(const char *locale, unsigned short *codepage)
{
    LCID lcid;
    locale_search_t search;
    const char *cp, *region;

    memset(&search, 0, sizeof(locale_search_t));

    cp = strchr(locale, '.');
    region = strchr(locale, '_');

    lstrcpynA(search.search_language, locale, MAX_ELEM_LEN);
    if(region) {
        lstrcpynA(search.search_country, region+1, MAX_ELEM_LEN);
        if(region-locale < MAX_ELEM_LEN)
            search.search_language[region-locale] = '\0';
    } else
        search.search_country[0] = '\0';

    if(cp) {
        lstrcpynA(search.search_codepage, cp+1, MAX_ELEM_LEN);
        if(region && cp-region-1<MAX_ELEM_LEN)
          search.search_country[cp-region-1] = '\0';
        if(cp-locale < MAX_ELEM_LEN)
            search.search_language[cp-locale] = '\0';
    } else
        search.search_codepage[0] = '\0';

    if(!search.search_country[0] && !search.search_codepage[0])
        remap_synonym(search.search_language);

    EnumResourceLanguagesA(GetModuleHandleA("KERNEL32"), (LPSTR)RT_STRING,
            (LPCSTR)LOCALE_ILANGUAGE,find_best_locale_proc,
            (LONG_PTR)&search);

    if (!search.match_flags)
        return -1;


    if (search.search_country[0] && !(search.match_flags & FOUND_COUNTRY))
        return -1;

    lcid = MAKELCID(search.found_lang_id, SORT_DEFAULT);


    if (!(search.match_flags & FOUND_CODEPAGE)) {


        if (search.search_codepage[0]) {
            if (IsValidCodePage(atoi(search.search_codepage)))
                memcpy(search.found_codepage,search.search_codepage,MAX_ELEM_LEN);
            else {

                if (!strcasecmp(search.search_codepage,"OCP")) {
                    GetLocaleInfoA(lcid, LOCALE_IDEFAULTCODEPAGE,
                            search.found_codepage, MAX_ELEM_LEN);
                } else if (!strcasecmp(search.search_codepage,"ACP")) {
                    GetLocaleInfoA(lcid, LOCALE_IDEFAULTANSICODEPAGE,
                            search.found_codepage, MAX_ELEM_LEN);
                } else
                    return -1;

                if (!atoi(search.found_codepage))
                    return -1;
            }
        } else {

            GetLocaleInfoA(lcid, LOCALE_IDEFAULTANSICODEPAGE,
                    search.found_codepage, MAX_ELEM_LEN);
            if (!search.found_codepage[0] || !atoi(search.found_codepage))
                GetLocaleInfoA(lcid, LOCALE_IDEFAULTCODEPAGE,
                        search.found_codepage, MAX_ELEM_LEN);
        }
    }
    if (codepage)
        *codepage = atoi(search.found_codepage);

    return lcid;
}
