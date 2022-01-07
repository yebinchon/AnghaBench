
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (int,int *) ;
 int * logFile ;

__attribute__((used)) static void
translate_char(int c, FILE *outFile)
{
    fputc(c, outFile);
    if (logFile)
        fputc(c, logFile);
}
