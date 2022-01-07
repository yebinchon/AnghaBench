
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (void* const) ;
 size_t getFileSize (char const*) ;
 int loadFile (void* const,char const*,size_t const) ;
 void* malloc (size_t const) ;
 int roundTripCheck (void* const,size_t const,int) ;
 int stderr ;

__attribute__((used)) static void fileCheck(const char* fileName, int testCCtxParams)
{
    size_t const fileSize = getFileSize(fileName);
    void* const buffer = malloc(fileSize + !fileSize );
    if (!buffer) {
        fprintf(stderr, "not enough memory \n");
        exit(4);
    }
    loadFile(buffer, fileName, fileSize);
    roundTripCheck(buffer, fileSize, testCCtxParams);
    free (buffer);
}
