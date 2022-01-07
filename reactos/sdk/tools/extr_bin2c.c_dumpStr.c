
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int feof (int *) ;
 unsigned char fgetc (int *) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static size_t dumpStr(FILE* inFile, FILE* outCFile)
{
    size_t bufLen = 0;
    unsigned char ch;


    fprintf(outCFile, "\n    \"");
    do
    {

        ch = fgetc(inFile);


        if (!feof(inFile))
        {

            if ((bufLen != 0) && (bufLen % 16) == 0)
            {

                fprintf(outCFile, "\"");
                fprintf(outCFile, "\n    \"");
            }


            fprintf(outCFile, "\\x%02x", (unsigned int)ch);
        }

        else
        {
            fprintf(outCFile, "\"");

        }

        ++bufLen;

    } while (!feof(inFile));

    return bufLen;
}
