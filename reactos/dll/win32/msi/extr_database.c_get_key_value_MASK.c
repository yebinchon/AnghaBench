#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIQUERY ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPWSTR FUNC10(MSIQUERY *view, LPCWSTR key, MSIRECORD *rec)
{
    MSIRECORD *colnames;
    LPWSTR str, val;
    UINT r, i = 0, sz = 0;
    int cmp;

    r = FUNC3(view, MSICOLINFO_NAMES, &colnames);
    if (r != ERROR_SUCCESS)
        return NULL;

    do
    {
        str = FUNC6(colnames, ++i);
        cmp = FUNC9( key, str );
        FUNC7(str);
    } while (cmp);

    FUNC8(&colnames->hdr);

    r = FUNC2(rec, i, NULL, &sz);
    if (r != ERROR_SUCCESS)
        return NULL;
    sz++;

    if (FUNC1(rec, i))  /* check record field is a string */
    {
        /* quote string record fields */
        const WCHAR szQuote[] = {'\'', 0};
        sz += 2;
        val = FUNC5(sz*sizeof(WCHAR));
        if (!val)
            return NULL;

        FUNC4(val, szQuote);
        r = FUNC2(rec, i, val+1, &sz);
        FUNC4(val+1+sz, szQuote);
    }
    else
    {
        /* do not quote integer record fields */
        val = FUNC5(sz*sizeof(WCHAR));
        if (!val)
            return NULL;

        r = FUNC2(rec, i, val, &sz);
    }

    if (r != ERROR_SUCCESS)
    {
        FUNC0("failed to get string!\n");
        FUNC7(val);
        return NULL;
    }

    return val;
}