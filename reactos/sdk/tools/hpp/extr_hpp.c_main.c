
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ParseInputFile (char*,int *) ;
 char* convert_path (char*) ;
 int error (char*,...) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;

int
main(int argc, char* argv[])
{
    char *pszInFile, *pszOutFile;
    FILE* fileOut;
    int ret;

    if (argc != 3)
    {
        error("Usage: hpp <inputfile> <outputfile>\n");
        exit(1);
    }

    pszInFile = convert_path(argv[1]);
    pszOutFile = convert_path(argv[2]);

    fileOut = fopen(pszOutFile, "wb");
    if (fileOut == ((void*)0))
    {
        error("Cannot open output file %s", pszOutFile);
        exit(1);
    }

    ret = ParseInputFile(pszInFile, fileOut);

    fclose(fileOut);
    free(pszInFile);
    free(pszOutFile);

    return ret;
}
