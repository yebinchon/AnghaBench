
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATAA ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef int DATA2 ;
typedef int DATA ;


 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (char*,int *) ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 size_t fwrite (char*,int,int,int *) ;
 int ok (int,char*) ;
 int rewind (int *) ;

__attribute__((used)) static void test_filemodeT(void)
{
    char DATA [] = {26, 't', 'e', 's' ,'t'};
    char DATA2 [100];
    char temppath[MAX_PATH];
    char tempfile[MAX_PATH];
    FILE* f;
    size_t bytesWritten;
    size_t bytesRead;
    WIN32_FIND_DATAA findData;
    HANDLE h;

    GetTempPathA(MAX_PATH, temppath);
    GetTempFileNameA(temppath, "", 0, tempfile);

    f = fopen(tempfile, "w+bDT");
    bytesWritten = fwrite(DATA, 1, sizeof(DATA), f);
    rewind(f);
    bytesRead = fread(DATA2, 1, sizeof(DATA2), f);
    fclose(f);

    ok (bytesRead == bytesWritten && bytesRead == sizeof(DATA),
        "fopen file mode 'T' wrongly interpreted as 't'\n" );

    h = FindFirstFileA(tempfile, &findData);

    ok (h == INVALID_HANDLE_VALUE, "file wasn't deleted when closed.\n" );

    if (h != INVALID_HANDLE_VALUE) FindClose(h);
}
