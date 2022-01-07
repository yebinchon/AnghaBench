
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* PCHAR ;
typedef int INT ;
typedef char CHAR ;


 int BuildType ;
 int DoParsing () ;
 int FallbackDriver ;
 int NoLogo ;
 int PrintUsage () ;
 int SanityCheck ;
 int SourceOnly ;
 int UnicodeFile ;
 int Verbose ;
 int exit (int) ;
 int fopen (char*,char*) ;
 int gSubVersion ;
 int gVersion ;
 int gfpInput ;
 char* gpszFileName ;
 int printf (char*,...) ;
 int strcpy (char*,char*) ;

INT
main(INT argc,
     PCHAR* argv)
{
    int i;
    ULONG ErrorCode, FailureCode;
    CHAR Option;
    PCHAR OpenFlags;
    CHAR BuildOptions[16] = {0};


    for (i = 1; i < argc; ++i)
    {
        if (argv[i][0] != '/' && argv[i][0] != '-')
            break;

        if (argv[i][1] && !argv[i][2])
            Option = argv[i][1];
        else
            Option = 0;


        switch (Option)
        {

            case 'A':
            case 'a':
                UnicodeFile = 0;
                break;


            case 'U':
            case 'u':
                UnicodeFile = 1;
                break;


            case 'V':
            case 'v':
                Verbose = 1;
                break;


            case 'N':
            case 'n':
                NoLogo = 1;
                break;


            case 'K':
            case 'k':
                FallbackDriver = 1;
                break;


            case 'W':
            case 'w':
                SanityCheck = 1;
                break;


            case 'I':
            case 'i':
                BuildType = 1;
                break;


            case 'X':
            case 'x':
                BuildType = 0;
                break;


            case 'M':
            case 'm':
                BuildType = 2;
                break;


            case 'O':
            case 'o':
                BuildType = 3;
                break;


            case 'S':
            case 's':
                SourceOnly = 1;
                break;

            default:

                PrintUsage();
                break;
        }
    }


    if (i == argc) PrintUsage();


    if (!NoLogo)
    {

        printf("\nKbdTool v%d.%02d - convert keyboard text file to C file or a keyboard layout DLL\n\n",
               gVersion, gSubVersion);
    }


    gpszFileName = argv[i];


    OpenFlags = "rb";
    if (!UnicodeFile) OpenFlags = "rt";


    gfpInput = fopen(gpszFileName, OpenFlags);
    if (!gfpInput)
    {

        printf("Unable to open '%s' for read.\n", gpszFileName);
        exit(1);
    }


    if (!NoLogo)
    {

        if (SourceOnly)
        {

            strcpy(BuildOptions, "source files");
        }
        else
        {

            switch (BuildType)
            {

                case 0:
                    strcpy(BuildOptions, "i386/x86");
                    break;
                case 1:
                    strcpy(BuildOptions, "ia64");
                    break;
                case 2:
                    strcpy(BuildOptions, "amd64/x64");
                    break;
                case 3:
                    strcpy(BuildOptions, "wow64");
                    break;
                default:
                    strcpy(BuildOptions, "unknown purpose");
                    break;
            }
        }


        printf("Compiling layout information from '%s' for %s.\n", gpszFileName, BuildOptions);
    }


    FailureCode = DoParsing();


    if (!(SourceOnly) && !(FallbackDriver)) ErrorCode = 0;


    if (FailureCode == 0)
    {

        if (!NoLogo) printf("All tasks completed successfully.\n");
    }
    else
    {

        printf("\n     %13d\n", FailureCode);
    }


    return ErrorCode;
}
