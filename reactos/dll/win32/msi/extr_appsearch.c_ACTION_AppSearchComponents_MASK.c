#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
struct TYPE_11__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ MSISIGNATURE ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (char*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ msidbLocatorTypeDirectory ; 
 scalar_t__ msidbLocatorTypeFileName ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char) ; 

__attribute__((used)) static UINT FUNC13(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] =  {
        'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ',
        '`','C','o','m','p','L','o','c','a','t','o','r','`',' ',
        'W','H','E','R','E',' ','`','S','i','g','n','a','t','u','r','e','_','`',' ','=',' ',
        '\'','%','s','\'',0};
    static const WCHAR sigquery[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','S','i','g','n','a','t','u','r','e','`',' ',
        'W','H','E','R','E',' ','`','S','i','g','n','a','t','u','r','e','`',' ','=',' ',
        '\'','%','s','\'',0};

    MSIRECORD *row, *rec;
    LPCWSTR signature, guid;
    BOOL sigpresent = TRUE;
    BOOL isdir;
    UINT type;
    WCHAR path[MAX_PATH];
    DWORD size = MAX_PATH;
    LPWSTR ptr;
    DWORD attr;

    FUNC6("%s\n", FUNC8(sig->Name));

    *appValue = NULL;

    row = FUNC1(package->db, query, sig->Name);
    if (!row)
    {
        FUNC6("failed to query CompLocator for %s\n", FUNC8(sig->Name));
        return ERROR_SUCCESS;
    }

    signature = FUNC3(row, 1);
    guid = FUNC3(row, 2);
    type = FUNC2(row, 3);

    rec = FUNC1(package->db, sigquery, signature);
    if (!rec)
        sigpresent = FALSE;

    *path = '\0';
    FUNC4(guid, path, &size);
    if (!*path)
        goto done;

    attr = FUNC0(path);
    if (attr == INVALID_FILE_ATTRIBUTES)
        goto done;

    isdir = (attr & FILE_ATTRIBUTE_DIRECTORY);

    if (type != msidbLocatorTypeDirectory && sigpresent && !isdir)
    {
        *appValue = FUNC7(path, sig);
    }
    else if (!sigpresent && (type != msidbLocatorTypeDirectory || isdir))
    {
        if (type == msidbLocatorTypeFileName)
        {
            ptr = FUNC12(path, '\\');
            *(ptr + 1) = '\0';
        }
        else
            FUNC5(path);

        *appValue = FUNC11(path);
    }
    else if (sigpresent)
    {
        FUNC5(path);
        FUNC9(path, FUNC3(rec, 2));

        attr = FUNC0(path);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            !(attr & FILE_ATTRIBUTE_DIRECTORY))
            *appValue = FUNC11(path);
    }

done:
    if (rec) FUNC10(&rec->hdr);
    FUNC10(&row->hdr);
    return ERROR_SUCCESS;
}