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
typedef  int /*<<< orphan*/  achDllName ;
struct TYPE_7__ {scalar_t__ bVersionIncluded; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ EXPORT ;

/* Variables and functions */
 scalar_t__ ARCH_AMD64 ; 
 scalar_t__ ARCH_ARM ; 
 scalar_t__ ARCH_IA64 ; 
 scalar_t__ ARCH_PPC ; 
 scalar_t__ ARCH_X86 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC10 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 int gbImportLib ; 
 int gbMSComp ; 
 int gbNotPrivateNoWarn ; 
 int gbTracing ; 
 scalar_t__ giArch ; 
 char* gpszUnderscore ; 
 int /*<<< orphan*/  guOsVersion ; 
 char* FUNC14 (size_t) ; 
 char* pszArchString ; 
 char* pszArchString2 ; 
 char* pszDllName ; 
 char* pszSourceFileName ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 char* FUNC20 (char*,char) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

int FUNC23(int argc, char *argv[])
{
    size_t nFileSize;
    char *pszSource, *pszDefFileName = NULL, *pszStubFileName = NULL, *pszLibStubName = NULL;
    const char* pszVersionOption = "--version=0x";
    char achDllName[40];
    FILE *file;
    unsigned cExports = 0, i;
    EXPORT *pexports;

    if (argc < 2)
    {
        FUNC22();
        return -1;
    }

    /* Read options */
    for (i = 1; i < (unsigned)argc && *argv[i] == '-'; i++)
    {
        if ((FUNC16(argv[i], "--help") == 0) ||
            (FUNC16(argv[i], "-h") == 0))
        {
            FUNC22();
            return 0;
        }
        else if (argv[i][1] == 'd' && argv[i][2] == '=')
        {
            pszDefFileName = argv[i] + 3;
        }
        else if (argv[i][1] == 'l' && argv[i][2] == '=')
        {
            pszLibStubName = argv[i] + 3;
        }
        else if (argv[i][1] == 's' && argv[i][2] == '=')
        {
            pszStubFileName = argv[i] + 3;
        }
        else if (argv[i][1] == 'n' && argv[i][2] == '=')
        {
            pszDllName = argv[i] + 3;
        }
        else if (FUNC18(argv[i], pszVersionOption, FUNC17(pszVersionOption)) == 0)
        {
            guOsVersion = FUNC21(argv[i] + FUNC17(pszVersionOption), NULL, 16);
        }
        else if (FUNC16(argv[i], "--implib") == 0)
        {
            gbImportLib = 1;
        }
        else if (FUNC16(argv[i], "--ms") == 0)
        {
            gbMSComp = 1;
        }
        else if (FUNC16(argv[i], "--no-private-warnings") == 0)
        {
            gbNotPrivateNoWarn = 1;
        }
        else if (FUNC16(argv[i], "--with-tracing") == 0)
        {
            if (!pszStubFileName)
            {
                FUNC9(stderr, "Error: cannot use --with-tracing without -s option.\n");
                return -1;
            }
            gbTracing = 1;
        }
        else if (argv[i][1] == 'a' && argv[i][2] == '=')
        {
            pszArchString = argv[i] + 3;
        }
        else
        {
            FUNC9(stderr, "Unrecognized option: %s\n", argv[i]);
            return -1;
        }
    }

    if (FUNC16(pszArchString, "i386") == 0)
    {
        giArch = ARCH_X86;
        gpszUnderscore = "_";
    }
    else if (FUNC16(pszArchString, "x86_64") == 0) giArch = ARCH_AMD64;
    else if (FUNC16(pszArchString, "ia64") == 0) giArch = ARCH_IA64;
    else if (FUNC16(pszArchString, "arm") == 0) giArch = ARCH_ARM;
    else if (FUNC16(pszArchString, "ppc") == 0) giArch = ARCH_PPC;

    if ((giArch == ARCH_AMD64) || (giArch == ARCH_IA64))
    {
        pszArchString2 = "win64";
    }
    else
        pszArchString2 = "win32";

    /* Set a default dll name */
    if (!pszDllName)
    {
        char *p1, *p2;
        size_t len;

        p1 = FUNC20(argv[i], '\\');
        if (!p1) p1 = FUNC20(argv[i], '/');
        p2 = p1 = p1 ? p1 + 1 : argv[i];

        /* walk up to '.' */
        while (*p2 != '.' && *p2 != 0) p2++;
        len = p2 - p1;
        if (len >= sizeof(achDllName) - 5)
        {
            FUNC9(stderr, "name too long: %s\n", p1);
            return -2;
        }

        FUNC19(achDllName, p1, len);
        FUNC19(achDllName + len, ".dll", sizeof(achDllName) - len);
        pszDllName = achDllName;
    }

    /* Open input file */
    pszSourceFileName = argv[i];
    file = FUNC8(pszSourceFileName, "r");
    if (!file)
    {
        FUNC9(stderr, "error: could not open file %s\n", pszSourceFileName);
        return -3;
    }

    /* Get file size */
    FUNC12(file, 0, SEEK_END);
    nFileSize = FUNC13(file);
    FUNC15(file);

    /* Allocate memory buffer */
    pszSource = FUNC14(nFileSize + 1);
    if (!pszSource)
    {
        FUNC7(file);
        return -4;
    }

    /* Load input file into memory */
    nFileSize = FUNC10(pszSource, 1, nFileSize, file);
    FUNC7(file);

    /* Zero terminate the source */
    pszSource[nFileSize] = '\0';

    pexports = FUNC6(pszSource, file, &cExports);
    if (pexports == NULL)
    {
        FUNC9(stderr, "Failed to allocate memory for export data!\n");
        return -1;
    }

    if (pszDefFileName)
    {
        /* Open output file */
        file = FUNC8(pszDefFileName, "w");
        if (!file)
        {
            FUNC9(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        FUNC1(file, pszDllName);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                 FUNC4(file, &pexports[i]);
        }

        FUNC7(file);
    }

    if (pszStubFileName)
    {
        /* Open output file */
        file = FUNC8(pszStubFileName, "w");
        if (!file)
        {
            FUNC9(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        FUNC2(file);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                FUNC5(file, &pexports[i]);
        }

        FUNC7(file);
    }

    if (pszLibStubName)
    {
        /* Open output file */
        file = FUNC8(pszLibStubName, "w");
        if (!file)
        {
            FUNC9(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        FUNC0(file, pszDllName);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                FUNC3(file, &pexports[i]);
        }

        FUNC9(file, "\n    END\n");
        FUNC7(file);
    }

    FUNC11(pexports);

    return 0;
}