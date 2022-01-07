
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int FilePtr; TYPE_1__* OptionalHeader; int AlignBuf; int cbInFileSize; } ;
struct TYPE_6__ {int FileAlignment; } ;
typedef TYPE_2__ FILE_INFO ;
typedef int FILE ;


 int GeneratePData (TYPE_2__*) ;
 int ParsePEHeaders (TYPE_2__*) ;
 int WriteOutFile (int *,TYPE_2__*) ;
 char* convert_path (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (int ) ;
 int load_file (char*,int *) ;
 int malloc (int ) ;
 int memset (int ,int ,int ) ;
 int perror (char*) ;
 int stderr ;

int main(int argc, char* argv[])
{
    char* pszInFile;
    char* pszOutFile;
    FILE_INFO File;
    FILE* outfile;
    int ret;

    if (argc != 3)
    {
        fprintf(stderr, "Usage: rsym <exefile> <symfile>\n");
        exit(1);
    }

    pszInFile = convert_path(argv[1]);
    pszOutFile = convert_path(argv[2]);

    File.FilePtr = load_file(pszInFile, &File.cbInFileSize);
    if (!File.FilePtr)
    {
        fprintf(stderr, "An error occured loading '%s'\n", pszInFile);
        exit(1);
    }

    ret = ParsePEHeaders(&File);
    if (ret != 1)
    {
        free(File.FilePtr);
        exit(ret == -1 ? 1 : 0);
    }

    File.AlignBuf = malloc(File.OptionalHeader->FileAlignment);
    memset(File.AlignBuf, 0, File.OptionalHeader->FileAlignment);

    GeneratePData(&File);

    outfile = fopen(pszOutFile, "wb");
    if (outfile == ((void*)0))
    {
        perror("Cannot open output file");
        free(File.FilePtr);
        exit(1);
    }

    WriteOutFile(outfile, &File);

    fclose(outfile);

    return 0;
}
