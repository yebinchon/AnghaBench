
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int achDllName ;
struct TYPE_7__ {scalar_t__ bVersionIncluded; } ;
typedef int FILE ;
typedef TYPE_1__ EXPORT ;


 scalar_t__ ARCH_AMD64 ;
 scalar_t__ ARCH_ARM ;
 scalar_t__ ARCH_IA64 ;
 scalar_t__ ARCH_PPC ;
 scalar_t__ ARCH_X86 ;
 int OutputHeader_asmstub (int *,char*) ;
 int OutputHeader_def (int *,char*) ;
 int OutputHeader_stub (int *) ;
 int OutputLine_asmstub (int *,TYPE_1__*) ;
 int OutputLine_def (int *,TYPE_1__*) ;
 int OutputLine_stub (int *,TYPE_1__*) ;
 TYPE_1__* ParseFile (char*,int *,unsigned int*) ;
 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (TYPE_1__*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int gbImportLib ;
 int gbMSComp ;
 int gbNotPrivateNoWarn ;
 int gbTracing ;
 scalar_t__ giArch ;
 char* gpszUnderscore ;
 int guOsVersion ;
 char* malloc (size_t) ;
 char* pszArchString ;
 char* pszArchString2 ;
 char* pszDllName ;
 char* pszSourceFileName ;
 int rewind (int *) ;
 int * stderr ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char*,char const*,int) ;
 int strncpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int strtoul (char*,int *,int) ;
 int usage () ;

int main(int argc, char *argv[])
{
    size_t nFileSize;
    char *pszSource, *pszDefFileName = ((void*)0), *pszStubFileName = ((void*)0), *pszLibStubName = ((void*)0);
    const char* pszVersionOption = "--version=0x";
    char achDllName[40];
    FILE *file;
    unsigned cExports = 0, i;
    EXPORT *pexports;

    if (argc < 2)
    {
        usage();
        return -1;
    }


    for (i = 1; i < (unsigned)argc && *argv[i] == '-'; i++)
    {
        if ((strcasecmp(argv[i], "--help") == 0) ||
            (strcasecmp(argv[i], "-h") == 0))
        {
            usage();
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
        else if (strncasecmp(argv[i], pszVersionOption, strlen(pszVersionOption)) == 0)
        {
            guOsVersion = strtoul(argv[i] + strlen(pszVersionOption), ((void*)0), 16);
        }
        else if (strcasecmp(argv[i], "--implib") == 0)
        {
            gbImportLib = 1;
        }
        else if (strcasecmp(argv[i], "--ms") == 0)
        {
            gbMSComp = 1;
        }
        else if (strcasecmp(argv[i], "--no-private-warnings") == 0)
        {
            gbNotPrivateNoWarn = 1;
        }
        else if (strcasecmp(argv[i], "--with-tracing") == 0)
        {
            if (!pszStubFileName)
            {
                fprintf(stderr, "Error: cannot use --with-tracing without -s option.\n");
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
            fprintf(stderr, "Unrecognized option: %s\n", argv[i]);
            return -1;
        }
    }

    if (strcasecmp(pszArchString, "i386") == 0)
    {
        giArch = ARCH_X86;
        gpszUnderscore = "_";
    }
    else if (strcasecmp(pszArchString, "x86_64") == 0) giArch = ARCH_AMD64;
    else if (strcasecmp(pszArchString, "ia64") == 0) giArch = ARCH_IA64;
    else if (strcasecmp(pszArchString, "arm") == 0) giArch = ARCH_ARM;
    else if (strcasecmp(pszArchString, "ppc") == 0) giArch = ARCH_PPC;

    if ((giArch == ARCH_AMD64) || (giArch == ARCH_IA64))
    {
        pszArchString2 = "win64";
    }
    else
        pszArchString2 = "win32";


    if (!pszDllName)
    {
        char *p1, *p2;
        size_t len;

        p1 = strrchr(argv[i], '\\');
        if (!p1) p1 = strrchr(argv[i], '/');
        p2 = p1 = p1 ? p1 + 1 : argv[i];


        while (*p2 != '.' && *p2 != 0) p2++;
        len = p2 - p1;
        if (len >= sizeof(achDllName) - 5)
        {
            fprintf(stderr, "name too long: %s\n", p1);
            return -2;
        }

        strncpy(achDllName, p1, len);
        strncpy(achDllName + len, ".dll", sizeof(achDllName) - len);
        pszDllName = achDllName;
    }


    pszSourceFileName = argv[i];
    file = fopen(pszSourceFileName, "r");
    if (!file)
    {
        fprintf(stderr, "error: could not open file %s\n", pszSourceFileName);
        return -3;
    }


    fseek(file, 0, SEEK_END);
    nFileSize = ftell(file);
    rewind(file);


    pszSource = malloc(nFileSize + 1);
    if (!pszSource)
    {
        fclose(file);
        return -4;
    }


    nFileSize = fread(pszSource, 1, nFileSize, file);
    fclose(file);


    pszSource[nFileSize] = '\0';

    pexports = ParseFile(pszSource, file, &cExports);
    if (pexports == ((void*)0))
    {
        fprintf(stderr, "Failed to allocate memory for export data!\n");
        return -1;
    }

    if (pszDefFileName)
    {

        file = fopen(pszDefFileName, "w");
        if (!file)
        {
            fprintf(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        OutputHeader_def(file, pszDllName);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                 OutputLine_def(file, &pexports[i]);
        }

        fclose(file);
    }

    if (pszStubFileName)
    {

        file = fopen(pszStubFileName, "w");
        if (!file)
        {
            fprintf(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        OutputHeader_stub(file);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                OutputLine_stub(file, &pexports[i]);
        }

        fclose(file);
    }

    if (pszLibStubName)
    {

        file = fopen(pszLibStubName, "w");
        if (!file)
        {
            fprintf(stderr, "error: could not open output file %s\n", argv[i + 1]);
            return -5;
        }

        OutputHeader_asmstub(file, pszDllName);

        for (i = 0; i < cExports; i++)
        {
            if (pexports[i].bVersionIncluded)
                OutputLine_asmstub(file, &pexports[i]);
        }

        fprintf(file, "\n    END\n");
        fclose(file);
    }

    free(pexports);

    return 0;
}
