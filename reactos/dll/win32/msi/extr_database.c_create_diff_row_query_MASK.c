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
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  char const* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static LPWSTR FUNC11(MSIDATABASE *merge, MSIQUERY *view,
                                    LPWSTR table, MSIRECORD *rec)
{
    LPWSTR query = NULL, clause = NULL, val;
    LPCWSTR setptr, key;
    DWORD size, oldsize;
    MSIRECORD *keys;
    UINT r, i, count;

    static const WCHAR keyset[] = {
        '`','%','s','`',' ','=',' ','%','s',' ','A','N','D',' ',0};
    static const WCHAR lastkeyset[] = {
        '`','%','s','`',' ','=',' ','%','s',' ',0};
    static const WCHAR fmt[] = {'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','`','%','s','`',' ',
        'W','H','E','R','E',' ','%','s',0};

    r = FUNC0(merge, table, &keys);
    if (r != ERROR_SUCCESS)
        return NULL;

    clause = FUNC6(sizeof(WCHAR));
    if (!clause)
        goto done;

    size = 1;
    count = FUNC1(keys);
    for (i = 1; i <= count; i++)
    {
        key = FUNC2(keys, i);
        val = FUNC3(view, key, rec);

        if (i == count)
            setptr = lastkeyset;
        else
            setptr = keyset;

        oldsize = size;
        size += FUNC4(setptr) + FUNC4(key) + FUNC4(val) - 4;
        clause = FUNC8(clause, size * sizeof (WCHAR));
        if (!clause)
        {
            FUNC7(val);
            goto done;
        }

        FUNC10(clause + oldsize - 1, setptr, key, val);
        FUNC7(val);
    }

    size = FUNC4(fmt) + FUNC4(table) + FUNC4(clause) + 1;
    query = FUNC5(size * sizeof(WCHAR));
    if (!query)
        goto done;

    FUNC10(query, fmt, table, clause);

done:
    FUNC7(clause);
    FUNC9(&keys->hdr);
    return query;
}