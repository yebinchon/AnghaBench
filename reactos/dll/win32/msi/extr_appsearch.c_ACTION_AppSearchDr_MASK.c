#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_19__ {int /*<<< orphan*/  db; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_17__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ MSISIGNATURE ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  char* LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_1__*,char*,int,char**) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC4 (char*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,char*,int*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

__attribute__((used)) static UINT FUNC18(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] =  {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ',
        'D','r','L','o','c','a','t','o','r',' ',
        'w','h','e','r','e',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ', '\'','%','s','\'',0};
    LPWSTR parent = NULL;
    LPCWSTR parentName;
    WCHAR path[MAX_PATH];
    WCHAR expanded[MAX_PATH];
    MSIRECORD *row;
    int depth;
    DWORD sz, attr;
    UINT rc;

    FUNC12("%s\n", FUNC13(sig->Name));

    *appValue = NULL;

    row = FUNC5( package->db, query, sig->Name );
    if (!row)
    {
        FUNC12("failed to query DrLocator for %s\n", FUNC13(sig->Name));
        return ERROR_SUCCESS;
    }

    /* check whether parent is set */
    parentName = FUNC7(row, 2);
    if (parentName)
    {
        MSISIGNATURE parentSig;

        FUNC0(package, parentName, &parentSig, &parent);
        FUNC2(&parentSig);
        if (!parent)
        {
            FUNC15(&row->hdr);
            return ERROR_SUCCESS;
        }
    }

    sz = MAX_PATH;
    FUNC8(row, 3, path, &sz);

    if (FUNC9(row,4))
        depth = 0;
    else
        depth = FUNC6(row,4);

    if (sz)
        FUNC1(package, path, expanded, MAX_PATH);
    else
        FUNC17(expanded, path);

    if (parent)
    {
        attr = FUNC4(parent);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            !(attr & FILE_ATTRIBUTE_DIRECTORY))
        {
            FUNC11(parent);
            FUNC10(parent);
        }

        FUNC17(path, parent);
        FUNC16(path, expanded);
    }
    else if (sz)
        FUNC17(path, expanded);

    FUNC10(path);

    rc = FUNC3(package, sig, path, depth, appValue);

    FUNC14(parent);
    FUNC15(&row->hdr);

    FUNC12("returning %d\n", rc);
    return rc;
}