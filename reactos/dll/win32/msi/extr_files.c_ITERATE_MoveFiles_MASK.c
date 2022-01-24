#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_21__ {scalar_t__ Action; } ;
struct TYPE_20__ {int /*<<< orphan*/  db; } ;
struct TYPE_19__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSICOMPONENT ;
typedef  char* LPWSTR ;
typedef  TYPE_2__* LPVOID ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 scalar_t__ INSTALLSTATE_LOCAL ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 char* FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 char* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC21 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (char*,char) ; 
 char* FUNC26 (char*) ; 
 char* FUNC27 (char*,char) ; 
 char* szBackSlash ; 

__attribute__((used)) static UINT FUNC28( MSIRECORD *rec, LPVOID param )
{
    MSIPACKAGE *package = param;
    MSIRECORD *uirow;
    MSICOMPONENT *comp;
    LPCWSTR sourcename, component;
    LPWSTR sourcedir, destname = NULL, destdir = NULL, source = NULL, dest = NULL;
    int options;
    DWORD size;
    BOOL wildcards;

    component = FUNC5(rec, 2);
    comp = FUNC21(package, component);
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = FUNC20( package, comp );
    if (comp->Action != INSTALLSTATE_LOCAL)
    {
        FUNC9("component not scheduled for installation %s\n", FUNC11(component));
        return ERROR_SUCCESS;
    }

    sourcename = FUNC5(rec, 3);
    options = FUNC4(rec, 7);

    sourcedir = FUNC18(package->db, FUNC5(rec, 5));
    if (!sourcedir)
        goto done;

    destdir = FUNC18(package->db, FUNC5(rec, 6));
    if (!destdir)
        goto done;

    if (!sourcename)
    {
        if (FUNC0(sourcedir) == INVALID_FILE_ATTRIBUTES)
            goto done;

        source = FUNC26(sourcedir);
        if (!source)
            goto done;
    }
    else
    {
        size = FUNC14(sourcedir) + FUNC14(sourcename) + 2;
        source = FUNC16(size * sizeof(WCHAR));
        if (!source)
            goto done;

        FUNC13(source, sourcedir);
        if (source[FUNC14(source) - 1] != '\\')
            FUNC12(source, szBackSlash);
        FUNC12(source, sourcename);
    }

    wildcards = FUNC25(source, '*') || FUNC25(source, '?');

    if (FUNC6(rec, 4))
    {
        if (!wildcards)
        {
            WCHAR *p;
            if (sourcename)
                destname = FUNC26(sourcename);
            else if ((p = FUNC27(sourcedir, '\\')))
                destname = FUNC26(p + 1);
            else
                destname = FUNC26(sourcedir);
            if (!destname)
                goto done;
        }
    }
    else
    {
        destname = FUNC26(FUNC5(rec, 4));
        if (destname) FUNC23(destname);
    }

    size = 0;
    if (destname)
        size = FUNC14(destname);

    size += FUNC14(destdir) + 2;
    dest = FUNC16(size * sizeof(WCHAR));
    if (!dest)
        goto done;

    FUNC13(dest, destdir);
    if (dest[FUNC14(dest) - 1] != '\\')
        FUNC12(dest, szBackSlash);

    if (destname)
        FUNC12(dest, destname);

    if (FUNC0(destdir) == INVALID_FILE_ATTRIBUTES)
    {
        if (!FUNC17(destdir))
        {
            FUNC10("failed to create directory %u\n", FUNC1());
            goto done;
        }
    }

    if (!wildcards)
        FUNC22(source, dest, options);
    else
        FUNC15(source, dest, options);

done:
    uirow = FUNC2( 9 );
    FUNC8( uirow, 1, FUNC5(rec, 1) );
    FUNC7( uirow, 6, 1 ); /* FIXME */
    FUNC8( uirow, 9, destdir );
    FUNC3(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC24( &uirow->hdr );

    FUNC19(sourcedir);
    FUNC19(destdir);
    FUNC19(destname);
    FUNC19(source);
    FUNC19(dest);

    return ERROR_SUCCESS;
}