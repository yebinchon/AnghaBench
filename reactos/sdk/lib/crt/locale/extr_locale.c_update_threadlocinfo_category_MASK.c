#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* locinfo; } ;
struct TYPE_8__ {TYPE_2__* lc_category; int /*<<< orphan*/ * lc_handle; TYPE_1__* lc_id; } ;
struct TYPE_7__ {int* locale; int* refcount; } ;
struct TYPE_6__ {int wLanguage; char wCountry; unsigned short wCodePage; } ;
typedef  TYPE_4__* MSVCRT__locale_t ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int LOCALE_ILANGUAGE ; 
 int LOCALE_NOUSEROVERRIDE ; 
 int LOCALE_SENGCOUNTRY ; 
 int LOCALE_SENGLANGUAGE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned short) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static BOOL FUNC6(LCID lcid, unsigned short cp,
        MSVCRT__locale_t loc, int category)
{
    char buf[256], *p;
    int len;

    if(FUNC0(lcid, LOCALE_ILANGUAGE|LOCALE_NOUSEROVERRIDE, buf, 256)) {
        p = buf;

        loc->locinfo->lc_id[category].wLanguage = 0;
        while(*p) {
            loc->locinfo->lc_id[category].wLanguage *= 16;

            if(*p <= '9')
                loc->locinfo->lc_id[category].wLanguage += *p-'0';
            else
                loc->locinfo->lc_id[category].wLanguage += *p-'a'+10;

            p++;
        }

        loc->locinfo->lc_id[category].wCountry =
            loc->locinfo->lc_id[category].wLanguage;
    }

    loc->locinfo->lc_id[category].wCodePage = cp;

    loc->locinfo->lc_handle[category] = lcid;

    len = 0;
    len += FUNC0(lcid, LOCALE_SENGLANGUAGE
            |LOCALE_NOUSEROVERRIDE, buf, 256);
    buf[len-1] = '_';
    len += FUNC0(lcid, LOCALE_SENGCOUNTRY
            |LOCALE_NOUSEROVERRIDE, &buf[len], 256-len);
    buf[len-1] = '.';
    FUNC4(buf+len, "%u", cp);
    len += FUNC5(buf+len)+1;

    loc->locinfo->lc_category[category].locale = FUNC2(len);
    loc->locinfo->lc_category[category].refcount = FUNC2(sizeof(int));
    if(!loc->locinfo->lc_category[category].locale
            || !loc->locinfo->lc_category[category].refcount) {
        FUNC1(loc->locinfo->lc_category[category].locale);
        FUNC1(loc->locinfo->lc_category[category].refcount);
        loc->locinfo->lc_category[category].locale = NULL;
        loc->locinfo->lc_category[category].refcount = NULL;
        return TRUE;
    }
    FUNC3(loc->locinfo->lc_category[category].locale, buf, len);
    *loc->locinfo->lc_category[category].refcount = 1;

    return FALSE;
}