
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (void*,int,int,int *) ;
 int free (void*) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 void* malloc (int) ;
 int trace (char*,...) ;

void*
LoadFile(const char* pszFileName, size_t* pFileSize)
{
    FILE* file;
    void* pFileData = ((void*)0);
    int iFileSize;

    trace("Loading file...");

    file = fopen(pszFileName, "rb");
    if (!file)
    {
        trace("Could not open file\n");
        return ((void*)0);
    }

    fseek(file, 0L, SEEK_END);
    iFileSize = ftell(file);
    fseek(file, 0L, SEEK_SET);
    *pFileSize = iFileSize;
    trace("ok. Size is %d\n", iFileSize);

    pFileData = malloc(iFileSize + 1);

    if (pFileData != ((void*)0))
    {
        if (iFileSize != fread(pFileData, 1, iFileSize, file))
        {
            free(pFileData);
            pFileData = ((void*)0);
        }
    }
    else
    {
        trace("Could not allocate memory for file\n");
    }

    fclose(file);

    return pFileData;
}
