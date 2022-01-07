
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr2; int file2; scalar_t__ nr1; int file1; } ;
typedef int FILE ;


 TYPE_1__ lastLine ;
 int log (int *,char*,scalar_t__) ;
 int log_file (int *,int ,scalar_t__) ;

__attribute__((used)) static void
logSource(FILE *outFile)
{
    log_file(outFile, lastLine.file1, lastLine.nr1);
    if (lastLine.nr2)
    {
        log(outFile, "| ---- [%u] ----\n", lastLine.nr2);
        log_file(outFile, lastLine.file2, lastLine.nr2);
    }
}
