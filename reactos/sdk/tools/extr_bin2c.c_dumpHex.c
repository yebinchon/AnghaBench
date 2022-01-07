
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ feof (int *) ;
 unsigned char fgetc (int *) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static size_t dumpHex(FILE* inFile, FILE* outCFile, char nullTerminate)
{
    size_t bufLen = 0;
    unsigned char ch;

    fprintf(outCFile, "\n{");
    do
    {

        ch = fgetc(inFile);

        if (feof(inFile) && nullTerminate)
            ch = 0x00;

        if (!feof(inFile) || nullTerminate)
        {

            if ((bufLen % 16) == 0)
                fprintf(outCFile, "\n   ");


            fprintf(outCFile, " 0x%02x,", (unsigned int)ch);

            ++bufLen;
        }
    } while (!feof(inFile));
    fprintf(outCFile, "\n}");

    return bufLen;
}
